// Challenge 8: String is rotated
// Write a function that accepts two strings, and returns true if
// one string is a rotation of the other.

import Foundation

// classic brute force solution

func isRotate(string1: String, string2:String) -> Bool {
    let letter = Array(string1.characters)[0]
    var string2_index = 0

    // short circuit if the two strings are not of equal length
    if string1.characters.count != string2.characters.count {
        return false
    }

    for match in string2.characters {
        if letter == match {
            // make a new string out of the slice before the match and compare
            let newIndex = string2.index(string2.startIndex, offsetBy: string2_index)

            let prefix = string2.substring(to: newIndex)
            let suffix = string2.substring(from: newIndex)
            let potential_Rotate = "\(suffix)\(prefix)"

            if string1 == potential_Rotate {
                return true
            }
        }
        string2_index += 1 // increment the index to string 2
    }
    return false
}

print("-------------------")
print(isRotate(string1: "Swift", string2: "ftSwi")) // true
print(isRotate(string1: "tca", string2: "cat"))     // true
print(isRotate(string1: "atc", string2: "cat"))     // true
print(isRotate(string1: "dog", string2: "catty"))   // false


// -------------------------------------------------------------
// Alternate solution which doubles the second string
// and if the first is in the second and they are the same length
// then its a rotation.

func isRotateDoubler(_ input: String, _ rotated: String) -> Bool {
    guard input.characters.count == rotated.characters.count else { return false }

    let doubledUp = rotated + rotated
    return doubledUp.contains(input)
}

print("-------------------")
print(isRotateDoubler("Swift", "ftSwi")) // true
print(isRotateDoubler("tca", "cat"))     // true
print(isRotateDoubler("atc", "cat"))     // true
print(isRotateDoubler("dog", "catty"))   // false
