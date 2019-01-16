//: 14.6 - Switching to Switch (default not necessary on enums)

import Foundation

enum TextAlignment
{
    case Left
    case Right
    case Center
}

var alignment = TextAlignment.Left

alignment = .Right

switch alignment {
    
case .Left:
    print("left aligned")
    
case .Right:
    print("right aligned")
    
case .Center:
    print("center aligned")
    
}

//: 14.7 - Make center the default case

switch alignment {
    
case .Left:
    print("left aligned")
    
case .Right:
    print("right aligned")
    
default:
    print("center aligned")
    
}
//: [Previous](@previous)
//: [Next](@next)
