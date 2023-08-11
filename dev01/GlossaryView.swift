//
//  GlossaryView.swift
//  dev01
//
//  Created by ㅤ on 16/8/23.
//

import SwiftUI

struct GlossaryView: View {
    
    let locations: LocationList = LocationList()
    let sportsPerLocation: SportsList = SportsList()
    @State private var searchText = ""
    init() {
            UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
        }
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(0..<searchResults.count, id: \.self) { idx  in
                    NavigationLink {
                        DetailView(photo: searchResults[idx].photo, photoCredit: searchResults[idx].photoCredit, desc: searchResults[idx].desc, sports: searchResults[idx].sports, location: searchResults[idx].location, exactLoc: searchResults[idx].exactLoc, gmapLink: searchResults[idx].gmapLink, website: searchResults[idx].website).navigationTitle(searchResults[idx].title)
                    } label: {
                        Text(searchResults[idx].title)
                    }
                }
            }
            .navigationTitle("Glossary").searchable(text: $searchText, prompt: "Search by sport, center,  location")
        }
    }
    
    var searchResults: [CreateLocation] {
            if searchText.isEmpty {
                return locations.LocationInformation
            } else {
                return locations.LocationInformation.filter
                {
                    ($0.title.lowercased().contains(searchText.lowercased()) || $0.sports.contains(searchText) || sportsPerLocation.sportsInformation[$0.sports[0]]!.object.contains(searchText.lowercased()) || $0.location.contains(searchText.lowercased()))
                }
            }
        }
}

struct GlossaryView_Previews: PreviewProvider {
    static var previews: some View {
        GlossaryView()
    }
}
