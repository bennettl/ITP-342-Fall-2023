//
//  Counter.swift
//  Demo
//
//  Created by Bennett Lee on 8/30/23.
//

import SwiftUI

struct Counter: View {
    @State var count : Int = 0

    var isEnd: Bool {
        count > 5
    }

    var body: some View {
        VStack {
            Text("Count: \(count)")
                .font(.title)

            if isEnd {
                Text("You've reach the end!!")
            }

            Button("Increment") {
                count += 1
            }
            .disabled(isEnd)
        }
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter()
    }
}
