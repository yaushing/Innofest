//
//  LocationManager.swift
//  dev01
//
//  Created by ㅤ on 10/9/23.
//

import MapKit
import CoreLocation

func calculateDelta(latitude: Double, longitude: Double) -> Double {
    let delta: Double = 0.05
    for location in MapLocations {
        print(abs(latitude - location.latitude) + abs(longitude - location.longitude))
    }
    return delta
}

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
                    span: MKCoordinateSpan(latitudeDelta: calculateDelta(latitude: $0.coordinate.latitude, longitude: $0.coordinate.longitude), longitudeDelta: calculateDelta(latitude: $0.coordinate.latitude, longitude: $0.coordinate.longitude))
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
        MapLocation(name: "Bedok Sports Centre", latitude: 1.3263, longitude: 103.9380),
        MapLocation(name: "Bukit Canberra Sports Centre", latitude: 1.44746, longitude: 103.824),
        MapLocation(name: "Bukit Gombak Sports Centre", latitude: 1.3598, longitude: 103.75229),
        MapLocation(name: "Choa Chu Kang Sports Centre", latitude: 1.374228, longitude: 103.686739),
        MapLocation(name: "Clementi Sports Centre", latitude: 1.311086, longitude: 103.765029),
        MapLocation(name: "Delta Sports Centre", latitude: 1.29040890842, longitude: 103.820419058),
        MapLocation(name: "Hougang Sports Centre", latitude: 1.3706, longitude: 103.8885),
        MapLocation(name: "Jalan Besar Sports Centre", latitude: 1.3100, longitude: 103.8605),
        MapLocation(name: "Jurong East Sports Centre", latitude: 1.347031, longitude: 103.729069),
        MapLocation(name: "Jurong West Sports Centre", latitude: 1.33742955001, longitude: 103.694571122),
        MapLocation(name: "Pasir Ris Sports Centre", latitude: 1.37427, longitude: 103.95203),
        MapLocation(name: "Sengkang Sports Centre", latitude: 1.386795, longitude: 103.890351),
        MapLocation(name: "Serangoon Sports Centre", latitude: 1.3567, longitude: 103.87416),
        MapLocation(name: "Tampines Sports Centre", latitude: 1.3530, longitude: 103.9394),
        MapLocation(name: "Toa Payoh Sports Centre", latitude: 1.33041, longitude: 103.85178),
        MapLocation(name: "Woodlands Sports Centre", latitude: 1.4341, longitude: 103.7798),
        MapLocation(name: "Yio Chu Kang Sports Centre", latitude: 1.388088, longitude: 103.842175),
        MapLocation(name: "Yishun Sports Centre", latitude: 1.412094, longitude: 103.83112),
        ]
