//: ## Implicitly Unwrapped Optionals
//: In some cases, you can be very certain that the Optional type will contain a value. For those situations, an "Implicitly Unwrapped Optional" is the preferred way to declare an Optional. Implicitly Unwrapped Optionals are implicitly unwrapped, meaning that the compiler assumes that the Optional type will have a value. Because it is still an Optional, however, the data type can nil assigned to its instances without causing an error.
import Foundation

var possibleNumber: Int!
possibleNumber = 404
//: possibleNumber now has a value of Int, not Int? because it was declared as an Implicitly Unwrapped Optional.
possibleNumber.dynamicType
//: [Previous](@previous)
//: [Next](@next)
