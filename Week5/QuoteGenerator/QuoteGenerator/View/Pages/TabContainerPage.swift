//
//  TabContainerPage.swift
//  QuoteGenerator
//
//  Created by Bennett Lee on 10/9/23.
//

import SwiftUI


// TabContainerPage
// ---- RandomQuotePage
// ---- QuoteListNavContainer
// -------- QuoteListPage
// ------------ QuoteListRow
// -------- NewQuotePage

struct TabContainerPage: View {
    @StateObject var viewModel = QuoteViewModel()

    var body: some View {
        TabView {
            RandomQuotePage()
                .tabItem{
                    Label("Random", systemImage: "message")
                }

            QuoteListNavContiainer()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
        }
        .environmentObject(viewModel)
        .accentColor(.pink)

    }
}

#Preview {
    TabContainerPage()
}
