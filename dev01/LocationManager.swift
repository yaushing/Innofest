//
//  LocationManager.swift
//  dev01
//
//  Created by ㅤ on 10/9/23.
//

import MapKit
import CoreLocation

class LocationManager: NSObject,CLLocationManagerDelegate, ObservableObject {
    @Published var region = MKCoordinateRegion()
    private let manager = CLLocationManager()
    override init() {
            super.init()
            manager.delegate = self
            manager.desiredAccuracy = kCLLocationAccuracyBest
            manager.requestWhenInUseAuthorization()
            manager.startUpdatingLocation()
        }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            locations.last.map {
                region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(latitude: $0.coordinate.latitude, longitude: $0.coordinate.longitude),
                    span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                )
            }
        }
}

struct MapLocation: Identifiable {
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

let MapLocations = [
        MapLocation(name: "Bishan Sport Hall", latitude: 1.3554, longitude: 103.8509),
        MapLocation(name: "Bukit Canberra Sports Centre", latitude: 1.44746, longitude: 103.824),
        MapLocation(name: "Toa Payoh Sports Centre", latitude: 1.3305, longitude: 103.8516)
        ]
