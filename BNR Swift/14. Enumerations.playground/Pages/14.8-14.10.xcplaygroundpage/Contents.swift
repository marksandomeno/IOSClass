//: 14.8 - Adding a case

import Foundation

enum TextAlignment
{
    case Left
    case Right
    case Center
    case Justify
}

var alignment = TextAlignment.Justify


//: 14.9 - Returning to explicit cases

/*
switch alignment {
    
case .Left:
    print("left aligned")
    
case .Right:
    print("right aligned")
    
case .Center:
    print("center aligned")
    
}
*/
//: 14.10 -  Including all cases


switch alignment {
    
case .Left:
    print("left aligned")
    
case .Right:
    print("right aligned")
    
case .Center:
    print("center aligned")
    
case .Justify:
    print("center justified")
}
//: [Previous](@previous)
//: [Next](@next)
