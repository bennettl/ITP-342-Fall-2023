import SwiftUI


// Synchronous programming
//let x = 5
//let y = 10
//let sum = x + y
//print("Result: \(sum)")



// Asynchronus programming

func callApiCalculator(x: Int, y: Int, onComplete: @escaping (Int) -> Void){
    // Call API Server
    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
        onComplete(x+y)
    })

}

print("1")
let x = 5
let y = 10

callApiCalculator(x: x, y: y, onComplete: { (result) in
    print("Result: \(result)")
    print("3")
})

print("2")// result is not availabe here


var arr = ["test"]
arr.insert(<#T##newElement: String##String#>, at: <#T##Int#>)

