//
//  FormView.swift
//  AnimationDemo2
//
//  Created by Bennett Lee on 9/27/23.
//

import SwiftUI

struct FormView: View {
    @State var age: Int = 0

    var body: some View {
        VStack {
            Counter(title: "Age", value: $age) // pass age to counter to manipulate

            Button("Sign Up") {
                // how do we access the age?
                print(age)
            }
        }
    }
}

#Preview {
    FormView()
}
