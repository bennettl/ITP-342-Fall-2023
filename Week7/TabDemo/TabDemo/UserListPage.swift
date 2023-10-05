//
//  UserListPage.swift
//  TabDemo
//
//  Created by Bennett Lee on 10/4/23.
//

import SwiftUI

struct UserListPage: View {
    let users: [User]

    var body: some View {
        NavigationStack {
            List(users) { user in
                NavigationLink(value: user) {
                    Text(user.name)
                }
            }
            .navigationDestination(for: User.self) { user in
                UserDetailPage(user: user)
            }
        }
    }
}

#Preview {
    UserListPage(
        users: [
            .init(id: "1", name: "John Smith"),
            .init(id: "2", name: "Amy Smith"),
            .init(id: "3", name: "Bob Smith")
        ]
    )
}
