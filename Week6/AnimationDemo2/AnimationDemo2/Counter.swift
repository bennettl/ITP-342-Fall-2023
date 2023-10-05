//
//  Counter.swift
//  AnimationDemo2
//
//  Created by Bennett Lee on 9/27/23.
//

import SwiftUI

struct Counter: View {

    let title: String

    @Binding var value: Int

    var body: some View {
        VStack {
            Text("\(title) \(value)")
            Button("Increment") {
                value += 1
            }
        }
    }
}

//#Preview {
//    Counter(title: "My Counter")
//}
