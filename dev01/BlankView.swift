//
//  BlankView.swift
//  dev01
//
//  Created by ㅤ on 17/8/23.
//

import SwiftUI

struct BlankView: View {
    
    
    @State var title: String
    @State var content: String
    
    var body: some View {
        ScrollView {
            VStack {
                Text(title).multilineTextAlignment(.center).font(.system(size: 36)).bold()
                Text(content).multilineTextAlignment(.center)
                Spacer()
            }.padding()
        }
    }
}

