//
//  TalkCell.swift
//  Workshop Test
//
//  Created by Sam Patzer on 6/7/19.
//  Copyright © 2019 wizage. All rights reserved.
//

import SwiftUI

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

#if DEBUG
struct TalkCell_Previews : PreviewProvider {
    static var previews: some View {
        let sampleData = ListTalksQuery.Data.ListTalk.Item(id: "0", name: "SwiftUI and Amplify", description: "", speakerName: "Sam Patzer", speakerBio: "")
        return TalkCell(talk: sampleData)
    }
}
#endif
