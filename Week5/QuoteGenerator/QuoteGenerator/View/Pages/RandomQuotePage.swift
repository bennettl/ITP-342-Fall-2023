//
//  RandomQuotePage.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 10/9/23.
//

import SwiftUI

struct RandomQuotePage: View {
    @EnvironmentObject var viewModel: QuoteViewModel

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
    }
}

#Preview {
    RandomQuotePage()
}
