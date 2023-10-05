//
//  ContentView.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/18/23.
//

import SwiftUI

struct ContentView: View {

    @StateObject var viewModel = QuoteViewModel()

    var body: some View {
        VStack(spacing: 12) {
            if let quote = viewModel.currentQuote {
                Text(quote.message)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(height: 100)

                Text(quote.author)
                    .font(.title3)
            }

            Button("Generate") {
                viewModel.randomize()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
