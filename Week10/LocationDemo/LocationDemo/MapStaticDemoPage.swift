//
//  MapDemoPage.swift
//  LocationDemo
//
//  Created by Bennett Lee on 10/23/23.
//

import SwiftUI
import MapKit

struct MapStaticDemoPage: View {
    let coordinate = CLLocationCoordinate2D(
        latitude: 34.0395639690228,
        longitude: -118.23265676303666
    )

    let coordinate2 = CLLocationCoordinate2D(
        latitude: 34.03455574238812,
        longitude: -118.23211085011799
    )

    let coordinate3 = CLLocationCoordinate2D(
        latitude: 34.03934170715321,
        longitude: -118.23262457652926
    )

    var body: some View {
        Map() {
            Marker(
                "Zinc Cafe",
                systemImage: "cup.and.saucer.fill",
                coordinate: coordinate
            )
            Marker(
                "Guerrilla Tacos",
                monogram: Text("GT"),
                coordinate: coordinate2
            )
            .tint(.teal)

            Annotation("Blue Bottle", coordinate: coordinate3) {
                NavigationLink {
                    Text("Blue Bottle Place Detail")
                } label: {
                    Circle()
                        .fill(Color.blue)
                        .frame(height: 30)
                }
            }
        }
        .mapStyle(
            .standard(pointsOfInterest: [.cafe])
        )

    }
}

#Preview {
    NavigationStack {
        MapStaticDemoPage()
    }
}
