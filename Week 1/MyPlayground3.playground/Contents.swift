import UIKit

//// This is a comment
//
///**
//This
// is a
// multiline comment
// */
//
//
//// Data Types
//
//
//// Int
//10
//-2
//0
//
//// Character
//"A"
//"😎"
//"0"
//
//// String
//"This is a string"
//"Anything goes"
//"true"
//
//// Float
//30.10
//35.1
//
//// Double (by default)
//103.5
//10.0
//
//// Boolean
//true
//false
//
//// Variables / Constant
//
//// let - constant
//
//let firstName = "Bennett"
////firstName = "Something else"
//
//// var - variable
//var favoriteNumber: Int = 42
//favoriteNumber = 50
//
//
//// Use constants by default, variables by exception
//
//// Type inference
//var computer = "Macbook"
//
//// String interpolation
//"My favorite computer is \(computer)"
//"My favorite number is \(220 + 1)"
//
//let final = 10 + 20.0
//
////!true
//
//// Control Flow
//
//// Execute a statement under a certain condition
//// if statements
//
//if favoriteNumber == 40 {
//    print("my favorite number is 40")
//} else if favoriteNumber == 41 {
//    print("my favorite number is 41")
//} else {
//    print("🤷🏻‍♂️")
//}
//
//// switch
//
//switch favoriteNumber {
//    case 40:
//        print("my favorite number is 40")
//    case 41:
//        print("my favorite number is 41")
//    case 50...100:
//        print("my favorite number is 50...100")
//    default:
//        print("🤷🏻‍♂️")
//}
//
//// Execute a statement multiple times
//
//// for loop - executes for a finite amount of times
//    // c style for loop
//
//// Iterate - go through the collection
//for number in 0..<10 {
//    print("number is \(number)")
//}
//
//
//// while loop
//var index = 0
//
//while index < 10 {
//    index += 1
//    print("index is \(index)")
//}
//
//
//// Increase by a step of 5 every time we iterate from 0 to 60
//
//for minute in stride(from: 0, to: 60, by: 5) {
//    print("minute is \(minute)")
//}


// FUNCTIONS


// DRY: Don't reapeat yourself

// Definition - author the logic of your function
//func greet() -> Void {
//    let firstName: String = "Bennett"
//    let lastName: String = "Lee"
//    print("Hello this is \(firstName) \(lastName)")
//}
//
//
//// Invocation - call and excute the function
//greet()
//greet()
//greet()
//greet()

// Default argument labels
// Function can take input
//func greet(firstName: String, lastName: String) {
//    print("Hello this is \(firstName) \(lastName)")
//}
//
//// Argument -> value you pass to a function -> "Bennett"
//// Parameter -> is the name of the input -> firstName
//greet(firstName: "Bennett", lastName: "Lee")


// Override the argument labels
// with -> external argumental label
// secondNumber -> internal parameter name
//func add(firstNumber: Int, with secondNumber: Int) -> Int {
//    return firstNumber + secondNumber
//}
//
//let result = add(firstNumber: 10, with: 50)
//print("result \(result)")
//
//// Omitting argument labels
//func subtract(_ firstNumber: Int, _ secondNumber: Int) -> Void {
//    firstNumber + secondNumber
//}
//
//subtract(10, 20)
//
//// Default value
//func greet(firstName: String = "Bennett") {
//    print(firstName)
//}
//
//greet()
//
//// Variadic parameter
//func sum(numbers: Int...) -> Int{
//    var result = 0
//    for number in numbers {
//        result += number
//    }
//    return result
//}
//
//sum(numbers: 1)
//sum(numbers: 1,2,3,4)
//sum(numbers: 1,10)
//
//// Network call
//// status code, status response
//// 200, "Ok"
//func makeNetworkRequest () -> (Int, String) {
//    return (200, "Ok")
//}
//
//let res = makeNetworkRequest()
//res.0
//res.1


// CLASS AND STRUCTURES

// Blueprints for objects to be created

class Person {
    let name: String

    // Intializer
    init(name : String) {
        // use "self" to refer to the property of the instance and to avoid naming conflicts with the local parameter that's also named "name"
        self.name = name.capitalized
    }

}

let john = Person(name: "John")

// Definition
struct Student {

    // Properties - attributes
    let name: String

    // Methods - actions
    func sayHi() {
        print("My name is \(name)")
    }
}

// Create an instance
// Structures have "memberwise initialzers" that creates a default initializer for you by scanning all the properties
let bennett = Student(name: "bennett")
bennett.name
bennett.sayHi()

let jessica = Student(name: "jessica")
jessica.name
jessica.sayHi()


struct Resolution {
    // Field level initialization
    var width = 10
    var height = 10

}

let res = Resolution()
res.height

struct Rectangle {
    // Stored properties
    let width: Int
    let height: Int

    // Computed properties
    var area: Int {
        return width * height
    }


}

let rect = Rectangle(width: 10, height: 5)
rect.area















