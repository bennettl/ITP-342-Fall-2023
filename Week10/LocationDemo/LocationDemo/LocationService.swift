//
//  LocationService.swift
//  LocationDemo
//
//  Created by Bennett Lee on 10/23/23.
//

import Foundation
import CoreLocation

class LocationService: NSObject, CLLocationManagerDelegate, ObservableObject {
    static let shared = LocationService()

    var lastLocation: CLLocation?
    let manager = CLLocationManager()

    override init() {
        super.init()

        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = 10.0

        manager.delegate = self

        // Delegation
        // 1. Delegator -> emits events
        // 2. Delegate -> receives events and processes it accordingly

    }

    func request(){
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }

    // This method will be called by the location manager whenever the user's location has surpass the distanceFilter
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }

        lastLocation = location

        // CLLocation
        // --> coordinate: CLCoordinate2D
        // ----> latitude: CLLocationDegrees (Double)
        // ----> latitude: CLLocationDegrees (Double)


        print("lat: \(location.coordinate.latitude) lng: \(location.coordinate.longitude)")

    }
}
