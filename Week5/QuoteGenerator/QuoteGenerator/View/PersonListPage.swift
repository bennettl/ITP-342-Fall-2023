//
//  PersonListPage.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 9/25/23.
//

import SwiftUI


struct PersonListPage: View {

    // This way is preferable
    let names: [String]

    // Not this way
//    let names = ["John", "Amy", "Sarah"]

    var body: some View {
        List(names, id: \.self) { name in
            HStack(alignment: .top) {
                Image(systemName: "person.circle")
                    .font(.largeTitle)
                    .foregroundColor(.teal)

                VStack(alignment: .leading, spacing: 10) {
                    Text(name)
                        .font(.title)
                    Text("USC student")
                        .font(.footnote)
                }
            }
        }
        .listStyle(.grouped)

//        List {
//            Text("Item One")
//            Text("Item Two")
//            Text("Item Three")
//        }
    }
}

#Preview {
    PersonListPage(names: ["Bennett", "Kota", "John"])
}
