//
//  ContentView.swift
//  CounterDemo
//
//  Created by Bennett Lee on 9/4/23.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        Rectangle()
            .fill(Color.red)
    }
}

struct ContentView: View {
    @State var path = NavigationPath()
    @State var password = ""

    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                TextField("Password", text: $password)
                Button("Login") {
                    if password == "Test" {
                        path.append("red")
                    }
                }
            }
            .navigationDestination(for: String.self) {
                if $0 == "red" {
                    RedView()
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
