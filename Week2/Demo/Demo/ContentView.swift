//
//  ContentView.swift
//  Demo
//
//  Created by Bennett Lee on 8/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hey Adam")
                .border(Color.black)
                .frame(width: 200.0)

            Text("Order of modifiers matter")
                .frame(width: 200.0)
                .border(Color.black)
                .foregroundColor(Color.brown)
                .bold()
        }
        .font(Font.title)
        .foregroundColor(Color.green)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
