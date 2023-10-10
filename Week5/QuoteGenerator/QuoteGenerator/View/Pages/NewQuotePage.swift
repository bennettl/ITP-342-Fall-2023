//
//  NewQuotePage.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 10/9/23.
//

import SwiftUI

struct NewQuotePage: View {
    @EnvironmentObject var viewModel: QuoteViewModel
    @Environment(\.dismiss) private var dismiss

    @State var author = ""
    @State var message = ""

    var body: some View {
        VStack (spacing: 16) {
            Spacer()
            TextField("Author", text: $author)
                .padding()
                .background(Color.white)
            TextField("Message", text: $message)
                .padding()
                .background(Color.white)

            Button {
                // Add a quote
                let quote = Quote(
                    id: UUID().uuidString,
                    author: author,
                    message: message
                )

                viewModel.add(quote: quote)

                dismiss()
            } label: {
                Text("Submit")
                    .frame(maxWidth: .infinity)
            }
            .disabled(author.isEmpty || message.isEmpty)
            .padding()
            .background(Color.white)

            Spacer()
        }
        .padding()
        .background(Color.gray)
    }
}

#Preview {
    NewQuotePage()
}
