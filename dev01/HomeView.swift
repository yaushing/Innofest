//
//  ContentView.swift
//  dev01
//
//  Created by ㅤ on 11/8/23.
//
import MapKit
import SwiftUI

struct HomeView: View {
    @StateObject var manager = LocationManager()
    @State var tracking: MapUserTrackingMode = .follow
    @State var search: String = ""
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 50, height: 50)
                        .background(
                            Image("pfp")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 50, height: 50)
                                .clipped()
                        )
                        .cornerRadius(50)
                }
            }.padding(.trailing)
            Text("Good morning.\n\nWhat would you like\nto do today?").multilineTextAlignment(.leading).font(.system(size: 36)).bold()
            Map(
               coordinateRegion: $manager.region,
               interactionModes: MapInteractionModes.all,
               showsUserLocation: true,
               userTrackingMode: $tracking,
               annotationItems: MapLocations,
               annotationContent: { location in
                   MapAnnotation(
                      coordinate: location.coordinate,
                      content: {
                         Image(systemName: "pin.circle.fill").foregroundColor(.red)
                         Text(location.name)
                      }
                   )
               }
            )
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
