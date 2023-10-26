//
//  MapDynamicDemoPage.swift
//  LocationDemo
//
//  Created by Bennett Lee on 10/23/23.
//

import SwiftUI
import MapKit

struct Place: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

let places = [
    Place(
        name: "Zinc Cafe",
        coordinate: CLLocationCoordinate2D(
            latitude: 34.0395639690228,
            longitude: -118.23265676303666
        )
    ),
    Place(
        name: "Guerrilla Tacos",
        coordinate: CLLocationCoordinate2D(
            latitude: 34.03455574238812,
            longitude: -118.23211085011799
        )
    ),
    Place(
        name: "Blue Bottle Coffee",
        coordinate: CLLocationCoordinate2D(
            latitude: 34.03934170715321,
            longitude: -118.23262457652926
        )
    )
]

struct MapDynamicDemoPage: View {

    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 34.03934170715321,
            longitude: -118.23262457652926
        ), 
        span: MKCoordinateSpan(latitudeDelta: 0.006, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places) { place in
            MapAnnotation(coordinate: place.coordinate) {
                VStack {
                    Text(place.name)
                    Circle()
                        .fill(Color.teal)
                        .frame(height: 30)
                }
            }
        }
    }
}

#Preview {
    MapDynamicDemoPage()
}
