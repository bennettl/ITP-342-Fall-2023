//
//  QuoteViewModel.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/18/23.
//

import Foundation
import Combine

class QuoteViewModel : ObservableObject {
    
    @Published var quotes = [Quote]() {
        didSet {
            save()
        }
    }

    @Published var currentQuote: Quote?

    var quotesFileUrl: URL

    init() {
        let documentsDirectory = FileManager.default
            .urls(for: .documentDirectory, in: .userDomainMask).first!

        print(documentsDirectory)
        let filePath = "\(documentsDirectory)/quotes.json"
        quotesFileUrl = URL(string: filePath)!

        if let loadedQuotes = load() {
            quotes = loadedQuotes
        } else {
            quotes = [
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
                Quote(
                    id: UUID().uuidString,
                    author: "Charles Dickens",
                    message: "It's was the best of times, it was the worst of times"
                ),
                Quote(
                    id: UUID().uuidString,
                    author: "Rose",
                    message: "Live, laugh, and love"
                ),
                Quote(
                    id: UUID().uuidString,
                    author: "Abe Lincoln",
                    message: "You can't believe everything you read on the internet"
                ),
                Quote(
                    id: UUID().uuidString,
                    author: "Drake",
                    message: "I’m here for a good time, not a long time")
            ]
        }

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

    // Encode -> Swift Objects -> JSON
    func save() {
        // Use JSONEncoder
        let encoder = JSONEncoder()

        do {
            let data = try encoder.encode(quotes)
            try data.write(to: quotesFileUrl)
        } catch {
            print(error)
        }
    }

    // Decode -> JSON -> Swift Objects
    func load() -> [Quote]? {
        let decoder = JSONDecoder()

        do {
            let data = try Data(contentsOf: quotesFileUrl)
            let quotes = try decoder.decode(Array<Quote>.self, from: data)
            return quotes
        } catch {
            print(error)
            return nil
        }
    }
}


