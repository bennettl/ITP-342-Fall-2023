import UIKit

@propertyWrapper
struct Uppercase {
    var value: String = ""

    var wrappedValue: String {
        get {
            return value.uppercased()
        }
        set {
            value = newValue
        }
    }
}

struct Person {
    @Uppercase var firstName: String

    init(firstName: String) {
        self.firstName = firstName
    }
}

let john = Person(firstName: "John")
john.firstName



//let john = Person(firstName: "John")
//john.firstName

// Finite list of values
enum Color {
    case blue
    case red
    case green
}

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}


func getItemFromVendingMachine(itemId: String) throws {

    if itemId == "0" {
        // if item is out of stock
        throw VendingMachineError.outOfStock
    }
}

do {
    try getItemFromVendingMachine(itemId: "123")
} catch {
    print(error)
}


func sayHi() {
    print("Hi")
}

//*** CLOSURES ***//
// Closures: A block of functionality / code

// 1) Named (functions)
func sayHello(){
    print("hi")
}

sayHello()

// 2) Unnamed closures
// Closure expressions

var students = ["Chris", "Angela", "Bennett", "Hannah", "John"]

//
//"A" > "Z"
//"A" < "Z"


func mySortFunction(s1: String, s2: String) -> Bool {
    return s1 < s2
}

// sort method accepts a closure with a signature of (String, String) -> Bool
students.sort(by: mySortFunction(s1:s2:))
print(students)

//students.sort(by: mySortFunction(s1:s2:))



// A closure expression creates a block of code (without a name) and is typically used as input to a function

students.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})

print(students)

// Type inteference
students.sort(by: { (s1, s2) in
    return s1 < s2
})

// Single statement closures don't need a return
students.sort(by: { (s1, s2) in
    s1 < s2
})

// Shorthand argument label
students.sort(by: { $0 < $1 })

// Trailing closure syntax
students.sort { $0 < $1 }


//func makeNetworkRequest(
//    requestMethod: String,
//    requestUrl: String,
//    onComplete: (String) -> Void
//) {
//
//}



























// Define block of code inline using closure expression
students.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// Type inference
students.sort(by: { (s1, s2) in
    return s1 > s2
})

// Single expression closure
students.sort(by: { (s1, s2) in s1 > s2 })

// Trailing closures (closure is the last argument in the argument list) don't need a label and don't need to be inside the parameter list
students.sort { (s1, s2) in s1 > s2 }

// Argument shorthand
// Swift automatically creates variables for arguments in the fashion: $0, $1, $2 ... to the number of arguments for the closure
students.sort { $0 > $1 }
