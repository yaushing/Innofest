//
//  DetailView.swift
//  dev01
//
//  Created by ㅤ on 16/8/23.
//

import SwiftUI

struct DetailView: View {
    
    let SportsName: SportsList = SportsList()
    @State var photo: String
    @State var photoCredit: String
    @State var desc: String
    @State var sports: [String]
    @State var location: String
    @State var exactLoc: String
    @State var gmapLink: String
    @State var website: String
    
    
    var body: some View {
        VStack {
            Image(photo).resizable().aspectRatio(UIImage(named: photo)!.size, contentMode: .fill)
            Text("Photo Credit: \(photoCredit)")
            Text("Located at \(location)")
            HStack {
                Text("Address: ")
                Link(exactLoc, destination: URL(string: gmapLink)!)
            }
            Link("Official Website", destination: URL(string: website)!)
            NavigationLink {
                LocationSportsView(sports: sports)
            } label: {
                Text("Sports Here")
            }
        }.padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(photo: "bishan", photoCredit: "Street Directory", desc: "Bishan Sports Hall is situated in the central part of Singapore at Bishan. Bishan Sports Hall is part of the Bishan Sports Recreation Centre, which includes Bishan Stadium and Bishan Sports Complex.", sports: ["Swimming", "Football", "Badminton", "Volleyball", "Basketball"], location: "Bishan", exactLoc: "5 Bishan Street 14, Singapore 579783", gmapLink: "https://www.google.com/maps/place/Bishan+ActiveSG+Sports+Hall/@1.355361,103.846008,17z/data=!3m2!4b1!5s0x31da171a1eb4d81b:0x76eb55b17f6675d5!4m6!3m5!1s0x31da171a1eb3b9af:0xc091afc7c28ea623!8m2!3d1.3553556!4d103.8508736!16s%2Fm%2F063yhjs?entry=ttu", website: "https://www.activesgcircle.gov.sg/facilities/bishan-sport-hall")
    }
}
