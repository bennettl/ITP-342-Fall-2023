//
//  ContentView.swift
//  LocationDemo
//
//  Created by Bennett Lee on 10/23/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Button("Get location") {
            LocationService.shared.request()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
