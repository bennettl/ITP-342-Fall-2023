//
//  Quote.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/18/23.
//

import Foundation

struct Quote : Hashable {
    let author: String
    let message: String

    static func == (lhs: Quote, rhs: Quote) -> Bool {
        return lhs.author == rhs.author &&
        lhs.message == rhs.message
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(author)
        hasher.combine(message)
    }
}
