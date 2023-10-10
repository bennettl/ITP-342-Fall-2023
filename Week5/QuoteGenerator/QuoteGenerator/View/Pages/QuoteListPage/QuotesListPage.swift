//
//  QuotesListPage.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/25/23.
//

import SwiftUI

struct QuotesListPage: View {
    @EnvironmentObject var viewModel: QuoteViewModel

    var body: some View {
        List($viewModel.quotes, editActions: .delete) { $quote in
            QuoteRow(quote: quote)
        }
        .navigationTitle("Quotes")
        .toolbar {
            // Approach #1
            NavigationLink(value: QuoteRoute.new) {
                Image(systemName: "plus")
            }
//                // Approach #2: Don't do this
//                NavigationLink {
//                    NewQuotePage()
//                } label: {
//                    Image(systemName: "plus")
//                }
        }
    }
}

#Preview {
    NavigationStack {
        QuotesListPage()
            .environmentObject(QuoteViewModel())
    }
}
