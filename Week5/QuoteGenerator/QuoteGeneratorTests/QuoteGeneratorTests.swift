//
//  QuoteGeneratorTests.swift
//  QuoteGeneratorTests
//
//  Created by Bennett Lee on 9/18/23.
//

import XCTest
@testable import QuoteGenerator


// Test Suite - container for your tests
    // Test Case - Invidvidual test

// Test Suite - QuoteViewModel
    // Test Case - getRandomQuote()

final class QuoteViewModelTests: XCTestCase {

    var viewModel: QuoteViewModel!

    // setUp - Gets invoked before your test gets executed

    // Invoked ONCE for the entire test suite
    override class func setUp() {
    }

    // Invoked EVERY TIME per test case
    override func setUp() {
        // 1. Setup
        viewModel = QuoteViewModel()
    }

    func testAddQuote(){
        let countBefore = viewModel.numberOfQuotes

        // 2. Operation
        let quote = Quote(author: "Author", message: "Message")
        viewModel.add(quote: quote)

        // 3. Assertion
        let countAfter = viewModel.numberOfQuotes
        XCTAssertEqual(countBefore + 1, countAfter)
    }

    func testRemoveQuote() {
        let countBefore = viewModel.numberOfQuotes

        // 2. Operation
        viewModel.remove(at: 0)

        // 3. Assertion
        let countAfter = viewModel.numberOfQuotes
        XCTAssertEqual(countBefore - 1, countAfter)
    }

    func testRemoveQuoteAtInvalidIndex() {
        viewModel.remove(at: 10_000)
    }

    func testGetQuote(){
        // 2. Operation
        let quote = viewModel.get(at: 0)

        // 3. Assertion
        XCTAssertNotNil(quote)
    }

    func testGetRandomQuote() {

        // 2. Operation
        let quote = viewModel.getRandomQuote()

        // 3. Assertion: - comparing the actual result with the expected result
        XCTAssertNotNil(quote)
    }

    func testRandomize(){
        // Seed
        viewModel.randomize()
        let quoteBefore = viewModel.currentQuote

        // Operation
        viewModel.randomize()

        // Assertion
        let quoteAfter = viewModel.currentQuote
        XCTAssertNotNil(quoteAfter)
        XCTAssertNotEqual(quoteBefore, quoteAfter)
    }


}
