//
//  SignUpForm.swift
//  Week3Wednesday
//
//  Created by Bennett Lee on 9/6/23.
//

import SwiftUI

struct SignUpForm: View {

    // Data ownership refers to where in the view tree that creates the data
    @State var count = 0
    @State var count2 = 0

    var body: some View {
        VStack {
            Counter(count: $count)
            Counter(count: $count2)

            Button("Submit") {
                print("The form has been submitted with count \(count)")
                // How do we access the count inside the counter?
            }
        }
    }
}

struct SignUpForm_Previews: PreviewProvider {
    static var previews: some View {
        SignUpForm()
    }
}
