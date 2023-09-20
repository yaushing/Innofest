//
//  InformationView.swift
//  dev01
//
//  Created by ㅤ on 17/8/23.
//

import SwiftUI

struct InformationView: View {
    
    @State var title: String
    @State var content: [[String]]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(content, id: \.self) { helpUrl in
                    Link(helpUrl[0], destination: URL(string: helpUrl[1])!)
                }
            }.navigationTitle(title)
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(title: "LL", content: [["FIBA", "https://www.apple.com"], ["billi baba", "https://sst.edu.sg"]])
    }
}
