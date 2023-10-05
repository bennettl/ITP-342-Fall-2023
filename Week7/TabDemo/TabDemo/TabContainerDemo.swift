//
//  TabContainerDemo.swift
//  TabDemo
//
//  Created by Bennett Lee on 10/4/23.
//

import SwiftUI

struct TabContainerDemo: View {
    @State var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            FirstPage(selection: $selection)
                .tag(0)
                .tabItem {
                    Label("Feed", systemImage: "square.grid.2x2")
                }

            ColorPage(color: .brown)
                .tag(1)
                .tabItem {
                    Label("Brown", systemImage: "star.fill")
                }

            ColorPage(color: .green)
                .tag(2)
                .tabItem {
                    Label("Green", systemImage: "list.star")
                }
        }
        .accentColor(.pink)
    }
}


struct FirstPage: View {
    @Binding var selection: Int

    var body: some View {
        VStack {
            Text("Feed")

            Button("Go to green") {
                selection = 2
            }
        }
    }
}

#Preview {
    TabContainerDemo()
}
