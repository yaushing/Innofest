//
//  LocationSportsView.swift
//  dev01
//
//  Created by ㅤ on 10/9/23.
//

import SwiftUI

struct LocationSportsView: View {
    @State var sports: [String]
    let SportsName: SportsList = SportsList()
    var body: some View {
        NavigationStack {
            List {
                ForEach(sports, id:\.self) { sport in
                    NavigationLink {
                        SportView(sport: sport)
                    } label: {
                        Text(SportsName.sportsInformation[sport]!.sportName)
                    }
                }
            }
        }.navigationTitle("Sports Taught Here")

    }
}
