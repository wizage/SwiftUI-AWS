//
//  TalkStore.swift
//  Workshop Test
//
//  Created by Sam Patzer on 6/5/19.
//  Copyright © 2019 wizage. All rights reserved.
//

import Combine
import SwiftUI
import AWSAppSync

final class TalkStore: BindableObject {
    /*
     Required by SwiftUI
     */
    let didChange = PassthroughSubject<[ListTalksQuery.Data.ListTalk.Item], Never>()
    private let appSyncClient: AWSAppSyncClient!
    var listTalks: [ListTalksQuery.Data.ListTalk.Item] {
        didSet {
            didChange.send(self.listTalks)
        }
        
    }
    
    /*
     Init if running app is not in debug mode
     */
    init(){
        self.listTalks = []
        do {
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: AWSAppSyncServiceConfig(),cacheConfiguration: AWSAppSyncCacheConfiguration())
            
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            
            // Initialize the AWS AppSync client
            appSyncClient.fetch(query: ListTalksQuery(), cachePolicy: .returnCacheDataAndFetch) { (result, error) in
                if (error != nil){
                    print(error?.localizedDescription ?? "")
                    return
                } else {
                    guard let talks = result?.data?.listTalks?.items else { return }
                    self.listTalks = talks as! [ListTalksQuery.Data.ListTalk.Item]
                }
            }
            
        } catch {
            print("Error initializing AppSync client. \(error)")
            appSyncClient = nil
        }
    }
    
    /*
     Init if running app is using SwiftUI Content View
     */
    init(talks: [ListTalksQuery.Data.ListTalk.Item]){
        self.appSyncClient = nil
        self.listTalks = talks
    }
    func delete(at: IndexSet){
        if(appSyncClient != nil){
            for index in at {
                let conferenceDelete = DeleteTalkInput(id: listTalks[index.id].id)
                appSyncClient?.perform(mutation: DeleteTalkMutation(input: conferenceDelete))
                { (result, error) in
                    if let error = error as? AWSAppSyncClientError {
                        print("Error occurred: \(error.localizedDescription )")
                        return
                    }
                    if let resultError = result?.errors {
                        print("Error saving conf talk: \(resultError)")
                        return
                    }
                }

            }
        }
        self.listTalks.remove(at: at)
    }
    
    func add(){
        if (appSyncClient != nil){
            let conferenceInput = CreateTalkInput(name: "Monetize your iOS app", description: "How to make dough as an iOS developer", speakerName: "Steve Jobs", speakerBio: "I do cool stuff at Apple")
            appSyncClient?.perform(mutation: CreateTalkMutation(input: conferenceInput))
            { (result, error) in
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                    return
                }
                if let resultError = result?.errors {
                    print("Error saving conf talk: \(resultError)")
                    return
                }
                
                guard let result = result?.data else { return }
                self.listTalks.append(self.mapAdd(neededConversion: result.createTalk!))
                print("Talk created: \(String(describing: result.createTalk?.id))")
            }
            //write it to our backend
        } else {
            let newItem = CreateTalkMutation.Data.CreateTalk(id: "100", name: "Monetize your iOS app", description: "How to make dough as an iOS developer", speakerName: "Steve Jobs", speakerBio: "I do cool stuff at Apple")
            listTalks.append(mapAdd(neededConversion: newItem))
        }
    }
    
    private func mapAdd(neededConversion:
        CreateTalkMutation.Data.CreateTalk) -> ListTalksQuery.Data.ListTalk.Item{
        let newItem = ListTalksQuery.Data.ListTalk.Item(id: neededConversion.id, clientId: neededConversion.clientId, name: neededConversion.name, description: neededConversion.description, speakerName: neededConversion.speakerName, speakerBio: neededConversion.speakerBio)
        return newItem
    }
}


extension Array {
    
    mutating func remove(at indexes : IndexSet) {
        guard var i = indexes.first, i < count else { return }
        var j = index(after: i)
        var k = indexes.integerGreaterThan(i) ?? endIndex
        while j != endIndex {
            if k != j { swapAt(i, j); formIndex(after: &i) }
            else { k = indexes.integerGreaterThan(k) ?? endIndex }
            formIndex(after: &j)
        }
        removeSubrange(i...)
    }
}
