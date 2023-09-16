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
    
    // Makes the navigationtitle fit
    init() {
            UILabel.appearance(whenContainedInInstancesOf: [UINavigationBar.self]).adjustsFontSizeToFitWidth = true
        }
    
    // Check for whether the search text
    // is inside any sport
    func checkForSport(sports:[String], search:String) -> Bool {
        
        // initialises containssport to false
        // if nothing changes it to true it will
        // return false
        var containssport: Bool = false
        
        // iterates through every sport inside
        // the given list of sports
        for sport in sports {
            // if sport name contains the searchtext
            // containssport is updated to true
            // breaks out of the loop straight
            // to return true
            if (sport.lowercased().contains(search)) {
                containssport = true
                break
            }
            
            // if the object of the sport is
            // inside the searchtext
            // e.g. ball, shuttle, racket
            // containssport is updated to true
            // breaks out of the loop straight
            // to return true
            if (sportsPerLocation.sportsInformation[sport]!.object.contains(searchText.lowercased())) {
                containssport = true
                break
            }
        }
        
        // after done iterating, return
        // containssport ( would be true if the above
        // happens ) , or returns false
        return containssport
    }
    
    var body: some View {
        
        NavigationStack {
            List {
                // Create a locationView through
                // OOP for every location in
                // LocationsList
                ForEach(0..<searchResults.count, id: \.self) { idx  in
                    NavigationLink {
                        LocationView(photo: searchResults[idx].photo, photoCredit: searchResults[idx].photoCredit, desc: searchResults[idx].desc, sports: searchResults[idx].sports, location: searchResults[idx].location, exactLoc: searchResults[idx].exactLoc, gmapLink: searchResults[idx].gmapLink, website: searchResults[idx].website).navigationTitle(searchResults[idx].title)
                    } label: {
                        Text(searchResults[idx].title)
                    }
                }
            }
            .navigationTitle("Glossary").searchable(text: $searchText, prompt: "Search by sport, center,  location")
        }
    }
    
    // filter
    var searchResults: [CreateLocation] {
            if searchText.isEmpty {
                // if nothing is being searched
                // return entire list
                return locations.LocationInformation
            } else {
                // otherwise
                // returns the .filter for every $0
                // which checks
                // 1. Location name
                // e.g. Delta Sports Hall
                // 2. Whether the sport is in
                // the location (see above)
                // 3. The rough location
                // e.g. Tiong Bahru
                return locations.LocationInformation.filter {
                    ($0.title.lowercased().contains(searchText.lowercased()) || checkForSport(sports: $0.sports, search: searchText.lowercased()) || $0.location.lowercased().contains(searchText.lowercased()))
                }
            }
        }
}

struct GlossaryView_Previews: PreviewProvider {
    static var previews: some View {
        GlossaryView()
    }
}
