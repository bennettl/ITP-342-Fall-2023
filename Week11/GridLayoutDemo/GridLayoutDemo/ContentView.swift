//
//  ContentView.swift
//  GridLayoutDemo
//
//  Created by Bennett Lee on 11/1/23.
//

import SwiftUI

struct ContentView: View {

    let gridItems = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns : gridItems, spacing: 10) {
                ForEach(0..<100) { _ in
//                    Color.blue
                    AsyncImage(url: URL(string: "https://picsum.photos/200"))
                        .frame(height: 75)
                        .clipShape(Circle())
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
