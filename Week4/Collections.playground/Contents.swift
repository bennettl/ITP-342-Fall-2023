import Foundation

// Arrays

// - Create

//let students : Array<String> = ["Matt", "Kota", "Amy"]

//let students : [String] = ["Matt", "Kota", "Amy"]

// Type Inference
var students = ["Matt", "Kota", "Amy"]

// - Access

// Subscript Notation to access elements
students[0]
students[1]

// Iterate / Enumarate -> go through each item in the collection
for student in students {
    print(student)
}

for (index, student) in students.enumerated() {
    print("#\(index + 1) \(student)")
}



// - Change

// Add
students.append("Kyle")
print(students)
students.insert("Jamie", at: 2)
print(students)

// Remove
students.remove(at: 2)
print(students)

// Replace
students[2] = "Bob"
print(students)

students.count
students.contains("Bob")

struct User {
    let name: String
    let age: Int
}

let users = [
    User(name: "Bennett", age: 100),
    User(name: "John", age: 200)
]

let sortedUsers = users.sorted(by: { (u1: User, u2: User) -> Bool in
    return u1.age < u2.age
})

for user in sortedUsers {
    print("Name: \(user.name)")
}

// Dictionaries

// Full Explicit Typing
//var airports: Dictionary<String, String> = [
//    "SFO" : "San Francisco",
//    "LAX" : "Los Angeles",
//    "JFK" : "New York"
//]

// Shorthand
//var airports: [String : String] = [
//    "SFO" : "San Francisco",
//    "LAX" : "Los Angeles",
//    "JFK" : "New York"
//]

// Type Inference
var airports = [
    "SFO" : "San Francisco",
    "LAX" : "Los Angeles",
    "JFK" : "New York"
]

// Access
let airport = airports["SFO"]
print(airport)

// Iterate
for (key, value) in airports {
    print("key \(key) value \(value)")
}

// Remove
airports["JFK"] = nil

// Add key / value pair
airports["LHR"] = "Heathrow"

print(airports)
