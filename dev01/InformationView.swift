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
        VStack {
            Text(title).multilineTextAlignment(.center).font(.system(size: 36)).bold()
                List {
                    ForEach(content, id: \.self) { helpUrl in
                        Link(helpUrl[0], destination: URL(string: helpUrl[1])!)
                    }
                }
        }
    }
}
