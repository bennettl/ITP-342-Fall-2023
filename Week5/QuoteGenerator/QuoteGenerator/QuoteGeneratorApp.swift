//
//  QuoteGeneratorApp.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/18/23.
//

import SwiftUI

@main
struct QuoteGeneratorApp: App {
    var body: some Scene {
        WindowGroup {
            VStack {
                        Text("Hello, World!")
                            .onTapGesture {
                                print("Text tapped")
                            }
                    }
                    .onTapGesture {
                        print("VStack tapped")
                    }

        }
    }
}
