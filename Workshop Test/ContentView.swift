//
//  ContentView.swift
//  Workshop Test
//
//  Created by Sam Patzer on 6/5/19.
//  Copyright © 2019 wizage. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @EnvironmentObject var talkStore : TalkStore
    var body: some View {
        NavigationView {
            List {
                Section{
                    ForEach(talkStore.listTalks.identified(by:\.id)){ talk in
                        TalkCell(talk: talk)
                    }
                    .onDelete(perform:{ items in
                        withAnimation {self.delete(offsets: items)}
                    })
                }
            }
            .navigationBarTitle(Text("Talks"))
            .navigationBarItems(trailing: Button(action: {
                self.talkStore.add()
            }, label: {
                Image(systemName: "plus")
            }))
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
        return ContentView()
        .environmentObject(TalkStore(talks: sampleData))
    }
}
#endif

struct TalkCell : View {
    let talk : ListTalksQuery.Data.ListTalk.Item
    var body: some View {
        return VStack(alignment: .leading) {
            Text("\(talk.name)")
                .font(.title)
            Text("\(talk.speakerName)")
                .font(.subheadline)
        }
    }
}
