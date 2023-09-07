//
//  ContentView.swift
//  Week3Wednesday
//
//  Created by Bennett Lee on 9/6/23.
//

import SwiftUI

// VStack -> Vertical Stack
// HStack -> Horizonal Stack

struct NameLabel: View {
    // State - What is the data backing the view
    let name: String

    // Presentation - How the view looks
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Text(name)
                    .bold()
                    .font(Font.title)
//                Text("USC")
//                    .font(.largeTitle)

            }
        }
    }
}

struct ContentView: View {
    var body: some View {

        ContactView()
//        SignUpForm()
//        NameLabel(name: "Test")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ContentView()
        }
    }
}
