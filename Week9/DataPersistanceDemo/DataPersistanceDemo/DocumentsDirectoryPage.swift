//
//  DocumentsDirectoryPage.swift
//  DataPersistanceDemo
//
//  Created by Bennett Lee on 10/16/23.
//

import SwiftUI

struct User : Codable {
    let firstName: String
    let lastName: String
    let age: Int
}

struct DocumentsDirectoryPage: View {
    var body: some View {
        VStack (spacing: 12) {
            Button("Save user to disk") {

                let sql = "SELECT * from users"

                // Encode native Swift object to a JSON file
                let sam = User(firstName: "Sam", lastName: "Smith", age: 30)

                // 1. Get the path that you are writing to
                let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

                let filepath = "\(documentsDirectory)/user.json"
                let fileURL = URL(string: filepath)!

                // Use a encoder to encode your object
                let encoder = JSONEncoder()

                do {
                    let data = try encoder.encode(sam)
                    try data.write(to: fileURL)
                } catch {
                    print(error)
                }
            }
            Button("Load user from disk") {
                // 1. Get the path that you are writing to
                let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

                let filepath = "\(documentsDirectory)/user.json"
                let fileURL = URL(string: filepath)!

                do {
                    let data = try Data(contentsOf: fileURL)

                    let decoder = JSONDecoder()
                    let user = try decoder.decode(User.self, from: data)

                    print("loaded user \(user.firstName) \(user.lastName) \(user.age)")
                } catch {
                    print(error)
                }
            }

            Button("Save string to disk") {
                // Saving to filesystem

                // 1. Get the path that you are writing to
                let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!

                let filepath = "\(documentsDirectory)/stuff.txt"
                let fileURL = URL(string: filepath)!

                // 2. Write the data
                do {
                    try "Bennett was here".write(
                        to: fileURL,
                        atomically: true,
                        encoding: .utf8
                    )
                } catch {
                    print(error)
                }

                //            print(documentsDirectory)
            }
        }
    }
}

#Preview {
    DocumentsDirectoryPage()
}
