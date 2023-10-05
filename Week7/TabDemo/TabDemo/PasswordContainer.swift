//
//  PasswordContainer.swift
//  TabDemo
//
//  Created by Bennett Lee on 10/4/23.
//

import SwiftUI

struct PasswordContainer: View {
    @State var password = "password"
    @State var path = NavigationPath()
    @State var showColorPage = false

    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                NavigationLink(value: "test") {
                    Text("Go to next view")
                }
                TextField("Password", text: $password)

                Button("Submit") {
                    if password == "password" {
                        path.append(Color.pink)
                    }
                }
            }
            .padding()

            .navigationDestination(for: Color.self) { color in
                ColorPage(color: color)
            }
            .navigationDestination(for: String.self) { string in
                VStack {
                    Text(string)
                }
            }
        }

    }
}

#Preview {
    PasswordContainer()
}
