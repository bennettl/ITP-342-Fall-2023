//
//  ContentView.swift
//  CalculatorDemo
//
//  Created by Bennett Lee on 9/13/23.
//

import SwiftUI

// View Model
class CalculatorViewModel: ObservableObject {

    // Model
    @Published var result: Int = 0

    // Simple business logic
    func add(firstNumber: Int, secondNumber: Int) {
        result = firstNumber + secondNumber
    }

}

// View
struct ContentView: View {

    @StateObject var calculatorViewModel = CalculatorViewModel()

    @State var firstNumber = ""
    @State var secondNumber = ""

    var body: some View {
        VStack {
            TextField("Number 1", text: $firstNumber)
                .background(Color.white)

            TextField("Number 2", text: $secondNumber)
                .background(Color.white)

            Button("Add") {
                // Perform some logic
                calculatorViewModel.add(
                    firstNumber: Int(firstNumber)!,
                    secondNumber: Int(secondNumber)!
                )
            }
            .font(.title)

            Text("Result: \(calculatorViewModel.result) ")
                .foregroundColor(Color.white)
                .font(.title2)

        }
        .padding()
        .background(Color.gray)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
