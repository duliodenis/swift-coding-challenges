// Challenge 7: Condensed white space
// Write a function that returns a string with any consecutive spaces
// replaced with a single space.

func truncateWhiteSpaces(_ input: String) -> String {
    var returnedString = Array(input.characters)

    var i = 0
    var length = returnedString.count

    while i < length - 1 {
        if returnedString[i] == " " && returnedString[i+1] == " " {
            returnedString.remove(at: i)
            length -= 1
            continue
        }
        i += 1
    }

    return String(returnedString)
}

print(truncateWhiteSpaces("Hello,         world!")) // Hello, world!
print(truncateWhiteSpaces("      a")) // [1 space]a


// ---------------------------------------------------
// Alternate solution with a for in loop

func truncateWhiteSpaces2(_ input: String) -> String {
    var spaceDetected = false
    var returnString = String()

    for letter in input.characters {
        if letter == " " {
            if spaceDetected { continue }
            spaceDetected = true
        } else {
            spaceDetected = false
        }
        returnString.append(letter)
    }

    return returnString
}

print("-------------------")
print(truncateWhiteSpaces2("Hello,         world!")) // Hello, world!
print(truncateWhiteSpaces2("      a")) // [1 space]a


// ---------------------------------------------------
// Alternate solution using a regular expression
// Note: this solution is not performance oriented.

import Foundation

func truncateWhiteSpaces3(_ input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

print("-------------------")
print(truncateWhiteSpaces3("Hello,         world!")) // Hello, world!
print(truncateWhiteSpaces3("      a")) // [1 space]a
