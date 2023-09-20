//
//  ContentView.swift
//  dev01
//
//  Created by ㅤ on 11/8/23.
//
import MapKit
import SwiftUI

struct MapView: View {
    @Environment(\.colorScheme) var colorScheme
    @StateObject var manager = LocationManager()
    @State var tracking: MapUserTrackingMode = .follow
    @State var search: String = ""
    var body: some View {
        VStack {
            // BigText
            HStack {
                Text("Map").font(.system(size: 36)).bold()
                Spacer()
            }.padding()
            // Giant Map
            Map(
               coordinateRegion: $manager.region,
               interactionModes: MapInteractionModes.all,
               showsUserLocation: true,
               userTrackingMode: $tracking,
               annotationItems: MapLocations,
               annotationContent: { location in
                   if colorScheme == .light {
                       MapAnnotation(
                        coordinate: location.coordinate,
                        content: {
                            Image(systemName: "pin.circle.fill").foregroundColor(.red)
                            Text(location.name).font(.system(size: 10)).foregroundColor(Color.gray)
                        }
                       )
                   } else {
                       MapAnnotation(
                        coordinate: location.coordinate,
                        content: {
                            Image(systemName: "pin.circle.fill").foregroundColor(.red)
                            Text(location.name).font(.system(size: 10)).foregroundColor(Color(UIColor.lightGray))
                        }
                       )
                   }
               }
            )
            Spacer()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
