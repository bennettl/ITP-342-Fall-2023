//
//  QuoteListNavContiainer.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 10/9/23.
//

import SwiftUI

enum QuoteRoute: Hashable {
    case new

    func hash(into hasher: inout Hasher) {
        hasher.combine(self)
    }
}

struct QuoteListNavContiainer: View {

    var body: some View {
        NavigationStack {
            QuotesListPage()
                .navigationDestination(for: QuoteRoute.self) {
                    if $0 == QuoteRoute.new {
                        NewQuotePage()
                    }
                }
        }
    }
}

#Preview {
    QuoteListNavContiainer()
}
