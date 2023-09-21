//
//  QuoteViewModel.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/18/23.
//

import Foundation
import Combine

class QuoteViewModel : ObservableObject {
    @Published var quotes = [Quote]()
    @Published var currentQuote: Quote?

    init() {
        quotes = [
            Quote(
                author: "Yoda",
                message: "Do or do not, there is no try"
            ),
            Quote(
                author: "Ryan's Sister",
                message: "Don't pet the sweaty things, and don't sweat the petty things"
            ),
            Quote(
                author: "Charles Dickens",
                message: "It's was the best of times, it was the worst of times"
            ),
            Quote(
                author: "Rose",
                message: "Live, laugh, and love"
            ),
            Quote(
                author: "Abe Lincoln",
                message: "You can't believe everything you read on the internet"
            ),
            Quote(
                author: "Drake",
                message: "I’m here for a good time, not a long time")
        ]
        currentQuote = quotes.first
    }


    var numberOfQuotes: Int {
        quotes.count
    }

    func add(quote: Quote) {
        quotes.append(quote)
    }

    func remove(at index: Int) {
        // Defensive programming, validate your input
        if index < 0 || index >= quotes.count {
            return
        }

        quotes.remove(at: index)
    }

    func get(at index: Int) -> Quote? {
        // Defensive programming, validate your input
        if index < 0 || index >= quotes.count {
            return nil
        }

        return quotes[index]
    }

    func getRandomQuote() -> Quote? {
        if quotes.isEmpty {
            return nil
        }

        let randomIndex = Int.random(in: 0..<quotes.count)

        return quotes[randomIndex]
    }

    func randomize() {
        // Keep going until there's a new quote
        var randomQuote = getRandomQuote()
        while (randomQuote == currentQuote) {
            randomQuote = getRandomQuote()
        }

        currentQuote = randomQuote
    }
}


