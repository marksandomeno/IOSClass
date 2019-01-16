//: 14.3 - Using Type Inference

import Foundation

enum TextAlignment
{
    case Left
    case Right
    case Center
}


var alignment = TextAlignment.Left



//: 14.4 - Inferring the enum type

alignment = .Right



//: 14.5 - Type Inference when comparing values

if alignment == .Right {
    print("We should right-align the text.")
}

//: [Previous](@previous)
//: [Next](@next)
