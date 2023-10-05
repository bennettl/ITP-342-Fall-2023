//
//  UserDetailPage.swift
//  TabDemo
//
//  Created by Bennett Lee on 10/4/23.
//

import SwiftUI

struct UserDetailPage: View {
    @Environment(\.dismiss) private var dismiss

    let user : User
    var body: some View {
        VStack {
            Text("My Profile")
            Text(user.name)
                .font(.largeTitle)
        }
        .navigationTitle("This is the title")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("New") {

                }
            }
            ToolbarItem(placement: .topBarLeading) {
                Button("Edit") {

                }
            }
        }

    }
}

#Preview {
    NavigationStack {
        UserDetailPage(user: .init(id: "1", name: "John"))
    }
}
