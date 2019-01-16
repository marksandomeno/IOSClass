//: 14.11 - Using Raw Values

import Foundation

enum TextAlignment: Int
{
    case Left
    case Right
    case Center
    case Justify
}

//: 14.2 - Confirming Raw Values

var alignment = TextAlignment.Justify

print("Left has raw value \(TextAlignment.Left.rawValue).")
print("Right has raw value \(TextAlignment.Right.rawValue).")

//: [Previous](@previous)
//: [Next](@next)
