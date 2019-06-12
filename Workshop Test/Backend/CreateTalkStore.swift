//
//  CreateTalkStore.swift
//  Workshop Test
//
//  Created by Sam Patzer on 6/11/19.
//  Copyright © 2019 wizage. All rights reserved.
//

import SwiftUI
import AWSAppSync
import Combine

final class CreateTalkStore: BindableObject {
    let didChange = PassthroughSubject<GetTalkQuery.Data.GetTalk, Never>()
    private let appSyncClient: AWSAppSyncClient!
    var currentDetail: GetTalkQuery.Data.GetTalk {
        didSet {
            didChange.send(self.currentDetail)
        }
    }
    
    init(){
        do {
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: AWSAppSyncServiceConfig(),cacheConfiguration: AWSAppSyncCacheConfiguration())
            
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            
            // Initialize the AWS AppSync client
            
        } catch {
            print("Error initializing AppSync client. \(error)")
            appSyncClient = nil
        }
        self.currentDetail = GetTalkQuery.Data.GetTalk(id: "0", name: "Error", description: "Nil", speakerName: "Nil", speakerBio: "Nil");
    }
    
    func getDetails(id:GraphQLID){
        var queryResult : GetTalkQuery.Data.GetTalk? = nil
        if (appSyncClient != nil){
            print("calling appsync")
            appSyncClient?.fetch(query: GetTalkQuery(id: id)){(result, error) in
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                    return
                }
                if let resultError = result?.errors {
                    print("Error getting conf talk: \(resultError)")
                    return
                }
                queryResult = result?.data?.getTalk!
                print("\(queryResult?.name)")
                self.currentDetail = queryResult!
            }
            
        } else {
            //Return sample data for testing
            self.currentDetail = GetTalkQuery.Data.GetTalk(id: "0", name: "Getting started with SwiftUI", description: "This is a guide to getting started with AWS and SwiftUI", speakerName: "Sam Patzer", speakerBio: "")
        }
    }
    
    init(currentDetail: GetTalkQuery.Data.GetTalk){
        self.appSyncClient = nil
        self.currentDetail = currentDetail
    }
}
