//
//  DetailView.swift
//  Workshop Test
//
//  Created by Sam Patzer on 6/11/19.
//  Copyright © 2019 wizage. All rights reserved.
//

import SwiftUI

struct DetailView : View {
    @Binding var talkStore : CreateTalkStore
    var id : String
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    Text("\(talkStore.currentDetail.name)")
                    .lineLimit(nil)
                }
                if (talkStore.currentDetail.description != ""){
                    Section{
                        Text("\(talkStore.currentDetail.description)")
                        .lineLimit(nil)
                    }
                }
                Section{
                    Text("\(talkStore.currentDetail.speakerName)")
                    .lineLimit(nil)
                }
                if (talkStore.currentDetail.speakerBio != ""){
                    Section{
                        Text("\(talkStore.currentDetail.speakerBio)")
                        .lineLimit(nil)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationBarItem(title: Text("Talk"), titleDisplayMode: .automatic, hidesBackButton: false)
        }
    }
 
}

#if DEBUG
struct DetailView_Previews : PreviewProvider {
    static var previews: some View {
//        let sampleData = [
//            ListTalksQuery.Data.ListTalk.Item(id: "0", name: "SwiftUI and Amplify", description: "", speakerName: "Sam Patzer", speakerBio: ""),
//            ListTalksQuery.Data.ListTalk.Item(id: "1", name: "WWDC Recap", description: "", speakerName: "Tim Apple", speakerBio: ""),
//            ListTalksQuery.Data.ListTalk.Item(id: "2", name: "Bash Party", description: "", speakerName: "Weezer", speakerBio: "")
//        ]
        
        return DetailView(talkStore: .constant(CreateTalkStore()), id: "0")
    }
}
#endif
