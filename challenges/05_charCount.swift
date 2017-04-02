// Count the characters
// Write a function that accepts a string, and returns how many times a specific
// character appears. Case sensitive.

// the classy way with a for-in loop
func charCount(_ input: String, char find: Character) -> Int {
    var count = 0
    for char in input.characters {
        if char == find {
            count += 1
        }
    }
    return count
}

// introduce a constraint of no for-in or while loop

// a functional approach
func charCountNoFor(_ input: String, char check: Character) -> Int {
    return input.characters.reduce(0) {
        $1 == check ? $0 + 1 : $0
    }
}

// an arithmetic solution
import Foundation

func charCountWithRemoval(_ input: String, char check: String) -> Int {
    let newInput = input.replacingOccurrences(of: check, with: "")
    return input.characters.count - newInput.characters.count
}

// Test Cases

charCount("hello", char: "h") // 1
charCount("hello", char: "l") // 2
charCount("hello", char: "q") // 0
charCount("hello", char: "H") // 0

charCountNoFor("hello", char: "h") // 1
charCountNoFor("hello", char: "l") // 2
charCountNoFor("hello", char: "q") // 0
charCountNoFor("hello", char: "H") // 0

charCountWithRemoval("hello", char: "h") // 1
charCountWithRemoval("hello", char: "l") // 1
charCountWithRemoval("hello", char: "q") // 1
charCountWithRemoval("hello", char: "H") // 1
