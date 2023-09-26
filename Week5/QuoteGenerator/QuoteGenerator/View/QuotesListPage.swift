//
//  QuotesListPage.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/25/23.
//

import SwiftUI

struct QuotesListPage: View {
    let quotes: [Quote]

    var body: some View {
        List(quotes) {
            QuoteRow(quote: $0)
        }.refreshable {
            // code to respond to a refresh event
        }
    }
}

#Preview {
    QuotesListPage(quotes: [
        Quote(
            id: UUID().uuidString,
            author: "Yoda",
            message: "Do or do not, there is no try"
        ),
        Quote(
            id: UUID().uuidString,
            author: "Ryan's Sister",
            message: "Don't pet the sweaty things, and don't sweat the petty things"
        ),
    ])
}
