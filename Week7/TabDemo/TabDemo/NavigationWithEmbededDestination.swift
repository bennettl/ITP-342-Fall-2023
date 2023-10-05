//
//  NavigationWithEmbededDestination.swift
//  TabDemo
//
//  Created by Bennett Lee on 10/4/23.
//

import SwiftUI

struct NavigationWithEmbededDestination: View {
    var body: some View {
        NavigationStack {
            // More complex view, also links to destination
            NavigationLink {
                VStack {
                    Text("Profile page")
                }
            } label: {
                HStack {
                    Image(systemName: "person")
                    Text("Name")
                }
            }


            // Simple text link to destination
            NavigationLink("Go to red view", destination: {
                VStack {
                    Text("Different page")
                }
            })
            .accentColor(.purple)
            .bold()
        }
    }
}

#Preview {
    NavigationWithEmbededDestination()
}
