import UIKit


struct User {
    let name: String
}

class CurrentUser {
    let name : String
    let preferences: String

    static let shared = CurrentUser(
        name : "John",
        preferences: ""
    )

    private init(name: String, preferences: String) {
        self.name = name
        self.preferences = preferences
    }

}

CurrentUser.shared
