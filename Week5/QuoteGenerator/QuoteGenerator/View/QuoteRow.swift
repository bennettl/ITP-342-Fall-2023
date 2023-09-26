//
//  QuoteRow.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/25/23.
//

import SwiftUI

struct QuoteRow : View {
    let quote: Quote

    var body: some View {
        HStack {
            Image(systemName: "quote.opening")

            VStack (alignment: .leading) {
                Text(quote.message)

                Text(quote.author)
                    .font(.footnote)
            }
        }
    }
}


#Preview {
    QuoteRow(
        quote: 
            Quote(
                id: UUID().uuidString,
                author: "Yoda",
                message: "Do or do not, there is no try"
            )
    )
}
