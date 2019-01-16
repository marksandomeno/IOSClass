//: ## Optionals
//: * Sometimes we need a way to deal with the possibility that an instance may not have a value
//: * Optionals are a data type in Swift to allow for that in which definite values are wrapped inside the optional type and must be unwrapped in order to be accessed.
import Foundation
//: Declare a variable called "possibleNumber" as an optional Int by using a ? after the data type. An optional Int is written as Int?, not Int. The question mark indicates that the value it contains is optional, meaning that it might contain some Int value, or it might contain no value at all. (It can’t contain anything else, such as a Bool value or a String value. It’s either an Int, or it’s nothing at all.) Initially, no value will be assigned to that variable, and it will have a nil value.
var possibleNumber: Int?
//: Next, assign an integer value to the variable.
possibleNumber = 404
//: Now, the possibleNumber variable has a value of 404, but it's still wrapped inside an Int?, which means it's possible that the value could change to nil at some point in the future. Printing the possible number to the console reveals its Optional value.
print(possibleNumber)
//: ## Force Unwrapping
//: In order to access the Int value of 404, the optional needs to be unwrapped. One way we can do that is by testing to see if the possibleNumber value is nil with an if statement and, if it does, we "force unwrap" the optional by adding an ! at the end and assigning the forced unwrapped optional to a new constant. We test the value first, because force unwrapping will only work if the Int? has a value.
if possibleNumber != nil {
    
    let definiteNumber = possibleNumber!
    print(definiteNumber)
}
//: When would you use optionals? Here's one example:
let stringNumber = "5150"
let convertedNumber = Int(stringNumber)
//: Swift’s Int type has an initializer which tries to convert a String value into an Int value. However, not every string can be converted into an integer. The string "123" can be converted into the numeric value 123, but the string "hello, world" does not have an obvious numeric value to convert to. Because the initializer might fail, it returns an optional Int, rather than an Int. 
print(convertedNumber)
//: [Previous](@previous)
//: [Next](@next)
