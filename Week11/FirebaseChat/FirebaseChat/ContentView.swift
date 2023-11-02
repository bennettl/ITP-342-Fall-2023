//
//  ContentView.swift
//  FirebaseChat
//
//  Created by Bennett Lee on 11/1/23.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

struct ContentView: View {
    var body: some View {
        Button ("Create User") {
            // Create a document in the users collection

            let db = Firestore.firestore()

            let user: [String: Any] = ["firstName": ["Sam", "was", "here"], "lastName": "Smith"]

            db.collection("users").addDocument(
                data: user, 
                completion: { (err) in
                    print("user insert is done \(err)")
                })

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
