//
//  ContactView.swift
//  Week3Wednesday
//
//  Created by Bennett Lee on 9/6/23.
//

import SwiftUI

class Contact: ObservableObject {
     @Published var name: String
     @Published var age: Int

     init(name: String, age: Int) {
         self.name = name
         self.age = age
     }

     func haveBirthday() -> Int {
         age += 1
         return age
     }
 }

struct ContactDetailView: View {
    @EnvironmentObject var contact: Contact

    var body: some View {
        VStack {
            Text("Name: \(contact.name)")
            Text("Age: \(contact.age)")
            Button("Get Older") {
                contact.haveBirthday()
            }
        }

    }
}

struct ContactView: View {
    @StateObject var contact = Contact(name: "John", age: 20)

    var body: some View {
        ContactDetailView()
            .environmentObject(contact)
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
