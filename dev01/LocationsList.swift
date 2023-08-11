//
//  LocationsList.swift
//  dev01
//
//  Created by ㅤ on 20/8/23.
//

import Foundation
import SwiftUI

struct CreateLocation {
    var title: String
    var photo: String
    var photoCredit: String
    var desc: String
    var sports: [String]
    var location: String
    var exactLoc: String
    var gmapLink: String
    var website: String
}

class LocationList {
    let LocationInformation = [
        CreateLocation(title: "Bishan Sport Hall", photo: "bishan", photoCredit: "Street Directory", desc: "Bishan Sports Hall is situated in the central part of Singapore at Bishan. Bishan Sports Hall is part of the Bishan Sports Recreation Centre, which includes Bishan Stadium and Bishan Sports Complex.", sports: ["Swimming", "Football", "Badminton", "Volleyball", "Basketball"], location: "Bishan", exactLoc: "5 Bishan Street 14, Singapore 579783", gmapLink: "https://www.google.com/maps/place/Bishan+ActiveSG+Sports+Hall/@1.355361,103.846008,17z/data=!3m2!4b1!5s0x31da171a1eb4d81b:0x76eb55b17f6675d5!4m6!3m5!1s0x31da171a1eb3b9af:0xc091afc7c28ea623!8m2!3d1.3553556!4d103.8508736!16s%2Fm%2F063yhjs?entry=ttu", website: "https://www.activesgcircle.gov.sg/facilities/bishan-sport-hall"),
        CreateLocation(title: "Bukit Canberra Sport Centre", photo: "bukitCanberra", photoCredit: "Joshua Chin", desc: "Bukit Canberra  is an integrated sports and community hub next to Sembawang MRT station. The hub houses facilities including an indoor sports hall, the largest ActiveSG gym in Singapore, a six-lane sheltered swimming pool, and an eight-lane lap pool.", sports: ["Football", "Badminton", "Volleyball", "Basketball"], location: "Bukit Canberra", exactLoc: "21 Canberra Link, Singapore 756973", gmapLink: "https://www.google.com/maps/place/Bukit+Canberra+ActiveSG+Sport+Hall/@1.4488782,103.8213654,17z/data=!3m1!4b1!4m6!3m5!1s0x31da15606c3c2107:0x3dc04436e21f8078!8m2!3d1.4488728!4d103.8239457!16s%2Fg%2F11t6yp0t01?entry=ttu",  website: "https://www.activesgcircle.gov.sg/facilities/bukit-canberra-sport-hall"),
        CreateLocation(title: "Toa Payoh Sport Hall", photo: "pfp", photoCredit: "Kenji", desc: "sample desc", sports: ["Badminton"], location: "Toa Payoh", exactLoc: "297 Lor 6 Toa Payoh, Singapore 319389", gmapLink: "https://www.google.com/maps/place/Toa+Payoh+ActiveSG+Sports+Hall/@1.3304068,103.8498059,17.86z/data=!4m12!1m5!3m4!2zMcKwMTknNDkuNSJOIDEwM8KwNTEnMDQuNiJF!8m2!3d1.330414!4d103.85128!3m5!1s0x31da1763e9258347:0x9f7dcd0b3ef1f9f8!8m2!3d1.3305324!4d103.8515678!16s%2Fm%2F0642fbj?entry=ttu/",  website: "https://www.activesgcircle.gov.sg/facilities/toa-payoh-sport-hall")
    ]
}
