//
//  AddTalk.swift
//  Workshop Test
//
//  Created by Sam Patzer on 6/7/19.
//  Copyright © 2019 wizage. All rights reserved.
//

import SwiftUI
import Combine

struct AddTalk : View {
    @Binding var talk : CreateTalkInput
    @EnvironmentObject var talkStore : TalkStore
    @Binding var isShowing : StateOfCreation
    //let saveHandler: ((Bool) -> Swift.Void)?
    var body: some View {
        NavigationView{
                List{
                    Section(header:Text("Talk Name")){
                        TextField($talk.name)
                        .lineLimit(1)
                    }
                    Section(header:Text("Talk Description")){
                        TextField($talk.description)
                        .frame(height:150)
                    }
                    Section(header:Text("Speaker Name")){
                        TextField($talk.description)
                        .lineLimit(1)
                    }
                    Section(header:Text("Speaker Bio")){
                        TextField($talk.description)
                            .frame(height:150)
                    }
                }
                .listStyle(.grouped)
            .navigationBarTitle(Text("Add Talk"))
            .navigationBarItems(leading:
                Button(action: {
                    self.talkStore.add()
                    self.isShowing = .dismiss
                }, label: { Text("Dismiss") }), trailing:
                Button(action: {
                        self.isShowing = .save
                    }, label: {
                        Text("Save")
                }))
 
        }
    }
    func addStuff(){
    }
}
/*
 let sampleData = ListTalksQuery.Data.ListTalk.Item(id: "0", name: "SwiftUI and Amplify", description: "", speakerName: "Sam Patzer", speakerBio: "")
 */
#if DEBUG
struct AddTalk_Previews : PreviewProvider {
    
    static var previews: some View {
        return AddTalk(talk: .constant(.init(name: "", description: "", speakerName: "", speakerBio: "")), isShowing: .constant(.show))
    }
}
#endif
