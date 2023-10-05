//
//  ContentView.swift
//  AnimationDemo2
//
//  Created by Bennett Lee on 9/27/23.
//

import SwiftUI

let OFFSET_Y = 500.0

struct ContentView: View {
    @State var yOffset = 0.0
    @State var isHidden = false

    var body: some View {
        VStack {
            Text("Hello, world!")
                .offset(y: yOffset)
                .opacity(isHidden ? 0.0 : 1.0)

            Button("Animate") {
                withAnimation(.linear(duration: 1.0)) {
                    yOffset = -1 * OFFSET_Y
                    isHidden = true
                }

                withAnimation(.linear.delay(1.0)) {
                    yOffset = OFFSET_Y
                }

                withAnimation(.easeInOut(duration: 0.5).delay(1.5)) {
                    yOffset = 0.0
                    isHidden = false
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
