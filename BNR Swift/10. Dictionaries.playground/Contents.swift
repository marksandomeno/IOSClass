//: Playground - noun: a place where people can play

import Cocoa

//: ## Dictionaries
//: * Unordered collections of key-value pairs
//: * Use a Dictionary when you need to look up values based on their unique identifier, or key
import Foundation
//: Create an empty Dictionary using general syntax. The type of a Swift dictionary is written in full as Dictionary<KeyType, ValueType>, where Key is the type of value that can be used as a dictionary key, and Value is the type of value that the dictionary stores for those keys.
var dict: Dictionary<Int, String> = [:]
//: Create an empty Dictionary using shorthand type syntax as [KeyType:ValueType] with an initializer().
var dict2 = [Int: String]()
dict2[1] = "Hello"
dict2[2] = "How are you?"
//: Create an empty Dictionary using literal syntax.
var dict3 = [:]
//: These are the three most common ways to create empty Dictionaries. Dictionaries can also be created with key-value pairs. Create a Dictionary with key-value pairs using general syntax.
var superHeroes: Dictionary<String, String> = ["Clark Kent":"Superman", "Bruce Wayne":"Batman", "David Banner":"Hulk"]
//: Create a Dictionary using literal syntax. A Dictionary literal is a shorthand way to write one or more key-value pairs as a collection.
var moreSuperHeroes: [String: String] = ["Diana Prince":"Wonderwoman", "Dick Greyson":"Robin", "Peter Parker":"Spiderman"]
//: Create a Dictionary using literal syntax with type inference. This is the easiest and preferrred way of creating Dictionaries.
var rankedSuperHeroes = [1:"Superman", 2:"Batman", 3:"Spiderman"]
//: Properties
//:
//: Like Arrays, Dictionaries have properties that can be accessed using dot notation.
//:
//: count - accesses the number of key-value pairs in the Dictionary
print("The superheroes dictionary contains \(superHeroes.count) items.")
//: isEmpty - returns a Boolean that states whether the Dictionary is empty.
if superHeroes.isEmpty {
    
    print("The superheroes dictionary is empty.")
    
} else {
    
    print("The superheroes dictionary is not empty.")
}
//: You can access the value of a Dictionary by subscripting its key value.
let bestSuperhero = superHeroes["Clark Kent"]
//: Items can be added to an empty Dictionary using subscript syntax[ ]. The Key is placed within the square brackets and then assigned to the Value.
superHeroes["Peter Parker"] = "Spiderman"
print(superHeroes)
//: Subscript syntax can also be used to modify the contents of the Value for a particular Key.
superHeroes["Peter Parker"] = "The Amazing Spiderman"
//: Use the updateValue(_:forKey:) method to set or update the value for a key.
superHeroes.updateValue("Incredible Hulk", forKey: "David Banner")
//: This method returns an optional String? The updateValue(_:forKey:) method sets a value for a key if none exists, or updates the value if that key already exists. Unlike a subscript, however, the updateValue(_:forKey:) method returns the old value after performing an update. This enables you to check whether or not an update took place. We can assign the results of this method to a temporary constant and use optional binding to check whether the returned, old value actually has a value.
if let oldValue = rankedSuperHeroes.updateValue("Hawkman", forKey:3) {
    
    print("The old value for #3 was \(oldValue).")
    rankedSuperHeroes.dynamicType
    
}
//Dictionary returns optional type for values
if let superHero = superHeroes["Clark Kent"] {
    
    print("The name of the superhero is \(superHero).")
    
} else {
    
    print("The name of the superHero could not be found.")
    
}

//: Use subscript syntax to remove a key-value pair
superHeroes["Bruce Wayne"] = nil
//: Use removeValueForKey(_:) to remove a key-value pair
superHeroes.removeValueForKey("Clark Kent")
print(superHeroes)
//: Iterate over a Dictionary with a for-in loop by decomposing a tuple

for (alias, heroName) in superHeroes {
    
    print("\(alias) : \(heroName)")
    
}
//: Retrieve iterable collection of keys or values by accessing properties
for alias in superHeroes.keys {
    
    print("The hero is: \(alias)")
    
}


for heroName in superHeroes.values {
    
    print("Hero name: \(heroName)")
}
//: Initialize a new Array with keys or values property
let aliases = [String](superHeroes.keys)
let heroNames = [String](superHeroes.values)

//: [Previous](@previous)
//: [Next](@next)
