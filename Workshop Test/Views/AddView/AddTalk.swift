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
                        TextField($talk.speakerName)
                        .lineLimit(1)
                    }
                    Section(header:Text("Speaker Bio")){
                        TextField($talk.speakerBio)
                            .frame(height:150)
                    }
                }
                .listStyle(.grouped)
            .navigationBarTitle(Text("Add Talk"))
            .navigationBarItems(trailing:
                Button(action: {
                        if (self.talk.name == "" || self.talk.speakerName == ""){
                            
                        } else {
                            self.isShowing = .save
                            self.talkStore.add(create:self.talk)
                        }
                    
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
        return AddTalk(talk: .constant(.init(name: "", description: "", speakerName: "", speakerBio: "")), isShowing: .constant(.show)).environmentObject(TalkStore())
    }
}
#endif
