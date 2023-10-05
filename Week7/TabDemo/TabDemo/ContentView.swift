//
//  ContentView.swift
//  TabDemo
//
//  Created by Bennett Lee on 10/4/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Go red screen", value: Color.red)
                NavigationLink("Go green screen", value: Color.green)
            }
            .navigationDestination(for: Color.self) { color in
                ColorPage(color: color)
            }

        }
    }
}



#Preview {
    ContentView()
}
