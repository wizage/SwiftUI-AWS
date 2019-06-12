//
//  ContentView.swift
//  Workshop Test
//
//  Created by Sam Patzer on 6/5/19.
//  Copyright © 2019 wizage. All rights reserved.
//

import SwiftUI

enum StateOfCreation {
    case save
    case dismiss
    case hide
    case show
}

struct ContentView : View {
    @EnvironmentObject var talkStore : TalkStore
    @State var shouldCreate : StateOfCreation = .hide
    @Binding var createTalk : CreateTalkStore
    @State var newTalk : CreateTalkInput = CreateTalkInput(name: "", description: "", speakerName: "", speakerBio: "")
    var body: some View {
        NavigationView {
            List {
                Section{
                    ForEach(talkStore.listTalks.identified(by:\.id)){ talk in
                        NavigationButton(destination: DetailView(talkStore:self.$createTalk, id: talk.id), onTrigger: {
                            self.createTalk.getDetails(id: talk.id)
                            return true
                        }, label: {
                            TalkCell(talk: talk)
                        })
                        
                    }
                    .onDelete(perform:{ items in
                        withAnimation {self.delete(offsets: items)}
                    })
                }
            }
            .navigationBarTitle(Text("Talks"))
            .navigationBarItems(trailing: Button(action: {
                    self.shouldCreate = .show
                }, label: {
                    Image(systemName: "plus").font(.title)
                    
                }).disabled(self.shouldCreate == .show))
                .presentation(self.shouldCreate == .show ? Modal(AddTalk(talk: $newTalk, isShowing:$shouldCreate).environmentObject(talkStore), onDismiss: {
                    self.shouldCreate = .hide
                    self.newTalk =  CreateTalkInput(name: "", description: "", speakerName: "", speakerBio: "")
            }) : nil)
            .listStyle(.grouped)
        }
    }
    func delete(offsets: IndexSet){
        talkStore.delete(at: offsets)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        let sampleData = [
            ListTalksQuery.Data.ListTalk.Item(id: "0", name: "SwiftUI and Amplify", description: "", speakerName: "Sam Patzer", speakerBio: ""),
            ListTalksQuery.Data.ListTalk.Item(id: "1", name: "WWDC Recap", description: "", speakerName: "Tim Apple", speakerBio: ""),
            ListTalksQuery.Data.ListTalk.Item(id: "2", name: "Bash Party", description: "", speakerName: "Weezer", speakerBio: "")
        ]
        return ContentView(createTalk: .constant(CreateTalkStore()))
        .environmentObject(TalkStore(talks: sampleData))
    }
}
#endif
