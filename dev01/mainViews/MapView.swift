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
            Text("Map").multilineTextAlignment(.leading).font(.system(size: 36)).bold()
            
            // Giant Map
            Map(
               coordinateRegion: $manager.region,
               interactionModes: MapInteractionModes.all,
               showsUserLocation: true,
               userTrackingMode: $tracking,
               annotationItems: MapLocations,
               annotationContent: { location in
                   if colorScheme == .dark {
                       MapAnnotation(
                          coordinate: location.coordinate,
                          content: {
                              Image(systemName: "mappin.and.ellipse").foregroundColor(.red)
                              Text(location.name).font(.system(size: 10)).foregroundColor(Color(UIColor.lightGray))
                          }
                      } else {
                          MapAnnotation(
                             coordinate: location.coordinate,
                             content: {
                                 Image(systemName: "mappin.and.ellipse").foregroundColor(.red)
                                 Text(location.name).font(.system(size: 10)).foregroundColor(Color.gray)
                      }
                   )
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
