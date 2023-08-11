//
//  SportView.swift
//  dev01
//
//  Created by ㅤ on 17/8/23.
//

import SwiftUI

struct SportView: View {
    
    let sportTypes = [
        "TI": "Territorial Invasion sport, where you have a territory and your enemy has one, and you invade theirs to get a score.",
        "NC": "Net and Court sport, where you have one side of the court and you rally an object until it falls.",
        "TG": "Target sport, where you aim for a target.",
        "RA": "Race for a specified Distance"
        
    ]
    
    let SportsListInformation: SportsList = SportsList()
    @State var sport: String
    
    var body: some View {
        VStack{
            Text(SportsListInformation.sportsInformation[sport]!.sportName).multilineTextAlignment(.center).font(.system(size: 36)).bold()
            Text("\(SportsListInformation.sportsInformation[sport]!.sportName) is a \(sportTypes[SportsListInformation.sportsInformation[sport]!.type]!)").multilineTextAlignment(.center)
            Text("There is/are \(SportsListInformation.sportsInformation[sport]!.players) player(s) on each team").multilineTextAlignment(.center).padding(.bottom, 20)
            Text("Rules:").multilineTextAlignment(.trailing).font(.system(size: 30)).bold()
            NavigationStack {
                List {
                    Section {
                        NavigationLink {
                            BlankView(title: SportsListInformation.sportsInformation[sport]!.sportName, content: SportsListInformation.sportsInformation[sport]!.general)
                        } label: {
                            Text("Basic Rules")
                        }
                    } header: {
                        Text("General")
                    }
                    Section {
                        NavigationLink {
                            BlankView(title: "\(SportsListInformation.sportsInformation[sport]!.sportName) scoring", content: SportsListInformation.sportsInformation[sport]!.scoring)
                        } label: {
                            Text("Scoring")
                        }
                        NavigationLink {
                            InformationView(title: "More information on \(SportsListInformation.sportsInformation[sport]!.sportName)", content: SportsListInformation.sportsInformation[sport]!.moreInfo)
                        } label: {
                            Text("More Information")
                        }
                    } header: {
                        Text("Advanced")
                    }
                }
            }
        }.padding()
    }
}
