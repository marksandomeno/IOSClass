//: ## Arrays
//: * ordered collections of elements
//: * zero-indexed
import Cocoa


var favorites: Array<String> = []

var favoriteMovies: [String] = ["Superman", "Star Wars", "Star Trek"]

var favoriteComposers: [String] = ["John Williams", "Hans Zimmer"]

favorites.insertContentsOf(favoriteMovies, at: 0)
favorites.insertContentsOf(favoriteComposers, at: 3)


favorites[1]
favorites.isEmpty
favorites.insert("2001: A Space Odyssey", atIndex: 1)
favorites.contains("Superman")
favorites.count
favorites.removeLast()
favorites.sort()
favorites.removeAtIndex(1)
favorites.append("Blade Runner")
favorites.first


let numberOneMovie = favorites[0]

for movie in favorites {
    
    print(movie)
    
}






for i in 0..<50 {
    
    var point = sin(Double(i) * 100)
    
}

//: [Next](@next)
