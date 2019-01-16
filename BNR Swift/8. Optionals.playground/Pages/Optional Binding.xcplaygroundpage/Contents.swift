//: ## Optional Binding
//: Optional binding is a useful pattern to detect whether an optional contains a value. If there is a value, then you can assign it to a temporary constant or variable and make it available within a conditional's first branch of execution. This can make your code more concise while also retaining its expressive nature.
import Foundation

var possibleNumber: Int?
possibleNumber = 404

if let definiteNumber = possibleNumber {
    
    print(definiteNumber)
    
}
//: The constant definiteNumber moves from the body of the conditional to its first line. This makes definiteNumber a temporary constant that is available within the first branch of the conditional. In other words, if there is a value within the optional, then a temporary constant is made available for use in the block of code that is executed if the condition is evaluated as true. Also, you no longer forcibly unwrap the optional. If the conversion is successful, then this operation is done for you and the optional's value is made available to you in the temporary constant you declared. Because Optional Binding only declares a temporary constant, a new constant must be declared in order to access the Int? outside the conditional. 
let definiteNumber = possibleNumber!
//: [Previous](@previous)
//: [Next](@next)
