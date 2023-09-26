//
//  ContentView.swift
//  AnimationDemo
//
//  Created by Bennett Lee on 9/25/23.
//

import SwiftUI

struct ContentView: View {
    @State var isCircleHidden = false
    @State var scale = 5.5

    var body: some View {
        VStack {
           Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(.pink)
                .scaleEffect(scale)
                .animation(.easeIn.repeatCount(30), value: scale)
            HStack {
                Button("+") { scale += 2.1 }
                Button("-") { scale -= 2.1 }
            }
            .font(.largeTitle)
        }
        .padding()

    }
}

#Preview {
    ContentView()
}
