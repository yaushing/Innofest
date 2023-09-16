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
        CreateLocation(title: "Bedok Sports Centre", photo: "bedok", photoCredit: "Street Directory", desc: "Bedok Sports Centre manages Bedok ActiveSG Sports Hall and Bedok Stadium", sports: ["Athletics", "Football", "Tennis"], location: "bedok", exactLoc: "11 Bedok North Street 1, Singapore 469662", gmapLink: "https://www.google.com/maps/place/Bedok+ActiveSG+Sports+Hall/@1.3270233,103.9298302,17z/data=!3m1!4b1!4m6!3m5!1s0x31da3ddce1fb4bed:0xb012b9323a0d8937!8m2!3d1.3270179!4d103.9324105!16s%2Fg%2F11jhwh0xjw?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=Bedok&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit&page=2"),
        CreateLocation(title: "Bishan Sports Centre", photo: "bishan", photoCredit: "Street Directory", desc: "Bishan Sports Hall is situated in the central part of Singapore at Bishan. Bishan Sports Centre manages Bishan Stadium and Bishan Sports Complex.", sports: ["Badminton"], location: "Bishan", exactLoc: "5 Bishan Street 14, Singapore 579783", gmapLink: "https://www.google.com/maps/place/Bishan+ActiveSG+Sports+Hall/@1.355361,103.846008,17z/data=!3m2!4b1!5s0x31da171a1eb4d81b:0x76eb55b17f6675d5!4m6!3m5!1s0x31da171a1eb3b9af:0xc091afc7c28ea623!8m2!3d1.3553556!4d103.8508736!16s%2Fm%2F063yhjs?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=Bishan&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Bukit Canberra Sport Centre", photo: "bukitCanberra", photoCredit: "Joshua Chin", desc: "Bukit Canberra Sport Centre manages Bukit Canberra Sports Hall and Bukit Canberra Stadium", sports: ["Badminton", "Pickleball", "Volleyball"], location: "Bukit Canberra", exactLoc: "21 Canberra Link, Singapore 756973", gmapLink: "https://www.google.com/maps/place/Bukit+Canberra+ActiveSG+Sport+Hall/@1.4488782,103.8213654,17z/data=!3m1!4b1!4m6!3m5!1s0x31da15606c3c2107:0x3dc04436e21f8078!8m2!3d1.4488728!4d103.8239457!16s%2Fg%2F11t6yp0t01?entry=ttu",  website: "https://members.myactivesg.com/programmes/result?keyword=Bukit+Canberra&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Bukit Gombak Sport Centre", photo: "bukitGombak", photoCredit: "Gaurav Vaidya", desc: "Bukit Gombak Sports Centre lies in the western region of Bukit Batok, managing Bukit Gombak Sports Hall and Bukit Gombak Stadium", sports: ["Athletics", "Football"], location: "Bukit Batok", exactLoc: "810 Bukit Batok West Ave. 5, Singapore 659088", gmapLink: "https://www.google.com/maps?client=opera-gx&hs=ma3&sca_esv=564320650&output=search&q=bukit+gombak+sports+centre&source=lnms&entry=mc&sa=X&ved=2ahUKEwih5Ie5s6KBAxUIxjgGHZgMDksQ0pQJegQIDBAB", website: "https://members.myactivesg.com/programmes/result?keyword=Bukit+Gombak&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Choa Chu Kang Sport Centre", photo: "cck", photoCredit: "ActiveSG", desc: "Choa Chu Kang Sports Centre manages Choa Chu Kang Stadium.", sports: ["Athletics", "Football"], location: "Choa Chu Kang", exactLoc: "1 Choa Chu Kang Street 53, Singapore 689236", gmapLink: "https://www.google.com/maps/place/Choa+Chu+Kang+ActiveSG+Sports+Centre/@1.3910416,103.7455782,17z/data=!3m1!4b1!4m6!3m5!1s0x31da11edb9fd65fd:0x870202202748aef3!8m2!3d1.3910416!4d103.7481531!16s%2Fg%2F1w8w7j3n?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=Choa+Chu+Kang&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Clementi Sports Centre", photo: "clementi", photoCredit: "Wikimedia", desc: "Clementi Sports Centre manages Clementi Sports Hall and Clementi Stadium", sports: ["Athletics", "Football"], location: "Clementi", exactLoc: "518 Clementi Ave 3, Singapore 129907", gmapLink: "https://www.google.com/maps?client=opera-gx&hs=jd3&sca_esv=564320650&output=search&q=clementi+sports+centre&source=lnms&entry=mc&sa=X&ved=2ahUKEwi-pZiQtKKBAxWOxjgGHcw_CV4Q0pQJegQICxAB", website: "https://members.myactivesg.com/programmes/result?keyword=Clementi&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Delta Sports Centre", photo: "delta", photoCredit: "Brian Teo via Straits Times", desc: "Delta Sports Centre manages Delta Sports Hall and Delta Gym", sports: ["Hockey", "Volleyball"], location: "Tiong Bahru", exactLoc: "900 Tiong Bahru Rd, Singapore 158790", gmapLink: "https://www.google.com/maps/place/Delta+Sports+Hall/@1.29059,103.8179197,17z/data=!3m2!4b1!5s0x31da1a2ac88b7c07:0xfd4aa0a8d4c21100!4m6!3m5!1s0x31da1a2a9071da1b:0xe9cb4213839b2b4b!8m2!3d1.2905846!4d103.8205!16s%2Fg%2F11g6xs794n?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=Delta&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Hougang Sports Centre", photo: "hougang", photoCredit: "Singapore Pickleball Association", desc: "Hougang Sports Centre manages Hougang Sports Hall and Hougang Stadium", sports: ["Football"], location: "Hougang", exactLoc: "93 Hougang Ave 4, Singapore 538832", gmapLink: "https://www.google.com/maps/place/Hougang+ActiveSG+Sports+Centre/@1.3706192,103.8859463,17z/data=!3m1!4b1!4m6!3m5!1s0x31da1648fe5e7391:0x7686183783cb075!8m2!3d1.3706138!4d103.8885266!16s%2Fg%2F1ptyqn_7q?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=Hougang&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Jalan Besar Sports Centre", photo: "jb", photoCredit: "ActiveSG via TimeOut", desc: "Jalan Besar Sports Centre manages Jalan Besar Stadium, Jalan Besar Swimming Complex and Jalan Besar Gym", sports: ["Aqua Aerobics", "Aqua Tabata",  "Aqua Zumba"], location: "Kallang", exactLoc: "100 Tyrwhitt Rd, Singapore 207542", gmapLink: "https://www.google.com/maps/place/Jalan+Besar+Sports+Centre/@1.3099839,103.8578732,17z/data=!3m1!4b1!4m6!3m5!1s0x31da19c909ec6263:0x95a444dd4b0cb726!8m2!3d1.3099785!4d103.8604535!16zL20vMGZ6bms1?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=&activity_filter=&venue_filter=193&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Jurong East Sports Centre", photo: "je", photoCredit: "Singapore Pickleball Association", desc: "Jurong East Sports Centre manages Jurong East Stadium, Jurong East Sports Hall and Jurong East Swimming Complex", sports: ["Aqua Aerobics", "Badminton"], location: "Jurong East", exactLoc: "21 Jurong East Street 31, Singapore 609517", gmapLink: "https://www.google.com/maps/place/Jalan+Besar+Sports+Centre/@1.3099839,103.8578732,17z/data=!3m1!4b1!4m6!3m5!1s0x31da19c909ec6263:0x95a444dd4b0cb726!8m2!3d1.3099785!4d103.8604535!16zL20vMGZ6bms1?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=&activity_filter=&venue_filter=302&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Jurong West Sports Centre", photo: "jw", photoCredit: "Wikipedia", desc: "Jurong West Sports Centre manages Jurong West Secondary School Sports Hall, Jurong West Stadium, Jurong West Swimming Complex and Jurong West Tennis Centre", sports: ["Aqua Aerobics", "Table Tennis", "Volleyball"], location: "Jurong West", exactLoc: "20 Jurong West Street 93, Singapore 648965", gmapLink: "https://www.google.com/maps/search/Jurong+West+ActiveSG+Sports+Centre/@1.3381726,103.6911654,17z/data=!3m1!4b1?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=&activity_filter=&venue_filter=203&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Pasir Ris Sport Centre", photo: "ps", photoCredit: "ActiveSG via TimeOut", desc: "Pasir Ris Sport Centre manages Pasir Ris Sports Hall and Pasir Ris Tennis Centre", sports: ["Badminton", "Football", "Table Tennis", "Tennis"], location: "Pasir Ris", exactLoc: "120 Pasir Ris Central, Singapore 519640", gmapLink: "https://www.google.com/maps/place/ActiveSG+Pasir+Ris+Sport+Centre/@1.3740291,103.9489143,17z/data=!3m2!4b1!5s0x31da3db04c0319a9:0x7fe384a2d42d2ac2!4m6!3m5!1s0x31da3db025ad70eb:0xd797a27a7e922c1c!8m2!3d1.3740237!4d103.9514946!16s%2Fg%2F126181hd3?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=&activity_filter=&venue_filter=542&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Sengkang Sports Centre", photo: "sk", photoCredit: "Wikipedia", desc: "Sengkang Sports Centre manages Sengkang Sports Hall, Sengkang Swimming Complex and Sengkang Hockey Pitch", sports: ["Aqua Aerobics", "Aqua Spinning", "Aqua Tabata", "Aqua Zumba", "Badminton"], location: "Sengkang", exactLoc: "57 Anchorvale Rd, Singapore 544964", gmapLink: "https://www.google.com/maps/place/Sengkang+ActiveSG+Sports+Centre/@1.3964853,103.8819747,17z/data=!3m2!4b1!5s0x31da160d219d62ef:0x4e87f17082bccbf4!4m6!3m5!1s0x31da1673f0d84aed:0x82745e6e60858bde!8m2!3d1.3964799!4d103.8868403!16s%2Fm%2F02z165f?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=&activity_filter=&venue_filter=241&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Serangoon Sports Centre", photo: "serangoon", photoCredit: "ActiveSG via TimeOut", desc: "Serangoon Sports Centre manages Serangoon Stadium and Serangoon Swimming complex", sports: ["Aqua Aerobics", "Aqua Tabata", "Athletics"], location: "Serangoon", exactLoc: "35 Yio Chu Kang Rd, Singapore 545552", gmapLink: "https://www.google.com/maps/place/Serangoon+Sport+Centre/@1.3570568,103.8720945,17z/data=!3m1!4b1!4m6!3m5!1s0x31da17aed999a847:0xa08c5acf4de96190!8m2!3d1.3570514!4d103.8746748!16s%2Fg%2F1ptwbqwnl?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=&activity_filter=&venue_filter=244&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Tampines Sports Hall", photo: "tpn", photoCredit: "Facebook/Our Tampines Hub", desc: "Tampines Sports Hall manages Tampines Gym and Tampines Swimming Complex", sports: ["Aqua Aerobics", "Aqua Spinning", "Aqua Zumba", "Deepwater Aqua Drum Vibes"], location: "Tampines", exactLoc: "1Tampines Walk, Singapore 529652", gmapLink: "https://www.google.com/maps/place/Tampines+Sports+Hall/@1.3530285,103.9345544,17z/data=!3m2!4b1!5s0x31da3d11f5d025fb:0xba564ad7696d844d!4m6!3m5!1s0x31da3d127f80ebcf:0xf43ca5ec73106d65!8m2!3d1.3530231!4d103.93942!16zL20vMGM3MGxm?entry=ttu", website: "https://members.myactivesg.com/programmes/result?keyword=&activity_filter=&venue_filter=894&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Toa Payoh Sport Hall", photo: "tp", photoCredit: "ActiveSG", desc: "The Toa Payoh Sports Hall is located in the heart of a residential community in the central region of Singapore and is part of the Toa Payoh Sports & Recreation Centre. The Sports Hall sits in Toa Payoh New Town, one of the earliest public housing estates in Singapore", sports: ["Archery"], location: "Toa Payoh", exactLoc: "297 Lor 6 Toa Payoh, Singapore 319389", gmapLink: "https://www.google.com/maps/place/Toa+Payoh+ActiveSG+Sports+Hall/@1.3304068,103.8498059,17.86z/data=!4m12!1m5!3m4!2zMcKwMTknNDkuNSJOIDEwM8KwNTEnMDQuNiJF!8m2!3d1.330414!4d103.85128!3m5!1s0x31da1763e9258347:0x9f7dcd0b3ef1f9f8!8m2!3d1.3305324!4d103.8515678!16s%2Fm%2F0642fbj?entry=ttu/",  website: "https://members.myactivesg.com/programmes/result?keyword=&activity_filter=&venue_filter=311&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Woodlands Sports Centre", photo: "woodlands", photoCredit: "ActiveSG Circle", desc: "Woodlands Sports Centre manages Woodlands Sports Hall, Woodlands Stadium and Woodlands Swimming Complex", sports: ["Athletics", "Aqua Aerobics", "Football"], location: "Woodlands", exactLoc: "2 Woodlands Street 12, Singapore 738599", gmapLink: "https://www.google.com/maps/place/Woodlands+Sports+Centre+(ActiveSG)/@1.4341094,103.7772177,17z/data=!3m2!4b1!5s0x31da13ac0492f595:0x68d6e06781cab543!4m6!3m5!1s0x31da13ac03679857:0x934ab4dbc0023ea8!8m2!3d1.434104!4d103.779798!16s%2Fg%2F1thptbmx?entry=ttu",  website: "https://members.myactivesg.com/programmes/result?keyword=woodlands&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Yio Chu Kang Sports Centre", photo: "yck", photoCredit: "FourSquare", desc: "Yio Chu Kang Sports Centre manages Yio Chu Kang Sports Hall, Yio Chu Kang Stadium, Yio Chu Kang Swimming Complex and Yio Chu Kang Tennis Centre", sports: ["Athletics", "Tennis"], location: "Ang Mo Kio", exactLoc: "214 Ang Mo Kio Ave 9, Singapore 569780", gmapLink: "https://www.google.com/maps/place/Yio+Chu+Kang+Sports+And+Recreation+Centre/@1.3837674,103.8433137,17z/data=!3m1!4b1!4m6!3m5!1s0x31da169543d8408b:0xb5c33b3f717a439f!8m2!3d1.383762!4d103.845894!16s%2Fg%2F11fnwhj_h7?entry=ttu",  website: "https://members.myactivesg.com/programmes/result?keyword=Yio+Chu+Kang&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
        CreateLocation(title: "Yishun Sports Centre", photo: "yishun", photoCredit: "ActiveSG Circle", desc: "Yishun Sports Centre manages Yishun Sports Hall, Yishun Swimming Complex and Yishun Swimming Complex", sports: ["Athletics", "Football"], location: "Yishun", exactLoc: "101 Yishun Ave 1, Singapore 769130", gmapLink: "https://www.google.com/maps/place/Yishun+Sports+Hall/@1.4121165,103.8264679,17z/data=!3m1!4b1!4m6!3m5!1s0x31da140f9796e8e3:0xeae3f21372dddb6e!8m2!3d1.4121111!4d103.8313335!16s%2Fg%2F1ptxrkthg?entry=ttu",  website: "https://members.myactivesg.com/programmes/result?keyword=Yishun&activity_filter=&venue_filter=&start_filter=&end_filter=&search=Submit"),
    ]
}