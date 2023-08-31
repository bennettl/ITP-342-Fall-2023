import Foundation

//
//class Student {
//
//    static var numberOfStudents = 0
//
//    var name: String
//
//    // Need to create your own initalizer
//    init(name: String){
//        self.name = name
//        Student.numberOfStudents += 1
//    }
//
//    // Clean up work when the object is removed from memory
//    deinit {
//
//    }
//}
//
//
//let ally = Student(name: "Ally")
//let john = Student(name: "John")
//
//Student.numberOfStudents
//
//struct Person {
//    var name: String
//}
//
//
//struct Professor  {
//    internal let name: String
//    let age: String
//}
//
//
//
//// Reference and value types come into play whenever you are assigning an instance to another variable
//
//// Person is a structure
//// Value types copy / clone the object
//let person1 = Person(name: "Person1")
//var person2 = person1
//
//person2.name = "Person2"
//
//person1.name
//person2.name
//
//// Student is a class
//// References types copy the reference / pointer to the object
//let student1 = Student(name: "Student1")
//var student2 = student1
//student2.name = "Student2"
//
//student1.name
//student2.name


// Optionals

// Billion dollar mistake
// a.k.a the "null" pointer exception

// iOS we call "null" as "nil" 🤷🏻‍♂️

// 1) Constants and variables can't be nil
// 2) If you want to nil, you have to explicty go through an optional

var name: String? = nil
name = "Bennett"
print(name)

/*
 AT LEAST 5 ways to access the underlying data of an optional
 - Force unwrapping
 - Implicitly unwrapped optional
 - Optional binding
 - Optional chaining
 - Nil coalescing operator
 */


// Force unwrapping
// why would you let that happen?
// early of stages of development, when you need to validate quickly that a state is present when you expect it to be
//print(name!)

// Implicitly unwrapped optional
//var name: String! = ""
//print(name)
//print(name)
//print(name)
//print(name)


// - Optional binding
// Use a if condition to safely unwrapp the underlying value of an optional
// if the value exists, then execute the if state
// if the value does not exist, then ignore and continue with the rest of the program

if let n = name {
    print("the value exists and it's \(n)")
} else {
    print("the value does not exist")
}

// Optional chaining

struct Computer {
    let name: String?
}

let mac = Computer(name: nil)
mac.name?.uppercased()

// Nil coalescing operator
let finalName: String = mac.name ?? "Default value"
finalName


// Guard statement
func printName(name: String?) {
    // for loop
        // while
            // for
                // if
    if let name {
        print(name)
    }

    guard let name else {
        return
    }

    print(name)

}

protocol Drivable {
    // Only method signatures, no implementation
    func accelerate(speed: Int)
    func stop()
}

struct Car : Drivable {
    func accelerate(speed: Int) {
    }

    func stop() {

    }

}

struct Bike : Drivable {
    func accelerate(speed: Int) {
    }

    func stop() {
    }


}

//let vehicles: Array<Drivable> = [Bike(), Car()]






struct Point : Hashable {
    let x: Int
    let y: Int

    static func == (lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}

let p1 = Point(x: 1, y: 2)
let p2 = Point(x: 2, y: 4)

p1 == p2

// Swift Extensions
extension String {
    func printMe(){
        print("the contents are \(self)")
    }
}

"test".printMe()
