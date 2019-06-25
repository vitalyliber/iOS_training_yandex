import UIKit

// https://stackoverflow.com/questions/24026510/how-do-i-shuffle-an-array-in-swift
extension Array{
    func myShuffled() -> Array{
        return self.shuffled()
    }
}
var array = ["one", "two", "three"]
array.myShuffled()
