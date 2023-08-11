//
//  CountingView.swift
//  dev01
//
//  Created by ㅤ on 10/9/23.
//

import SwiftUI

struct CountingView: View {
    @State var matches: Int
    @State var pointsPerMatch: Int
    @State var deuceEnabled: Bool
    @State var teamOnePoints: [Int] = [0, 0]
    @State var teamTwoPoints: [Int] = [0, 0]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CountingView_Previews: PreviewProvider {
    static var previews: some View {
        CountingView(matches: 10, pointsPerMatch: 12, deuceEnabled: false)
    }
}
