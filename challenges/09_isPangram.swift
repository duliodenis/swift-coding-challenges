// Challenge 9: Is the string a pangram?
// Write a function that returns true if a given string is an English pangram.

func isPangram(_ input: String) -> Bool {
    var alphabet = Array("abcdefghijklmnopqrstuvwxyz".characters)

    for letter in input.lowercased().characters {
        if let index = alphabet.index(of: letter) {
            alphabet.remove(at: index)
        }
        if alphabet.count == 0 { return true }
    }
    return false
}

print("---------------")
print(isPangram("The quick brown fox jumps over the lazy dog."))  // true
print(isPangram("The quick brown fox jumped over the lazy dog.")) // false - missing s

//Swift 4
func isPangram2(_ string: String) -> Bool {
    var isPan = true
    "abcdefghijklmnopqrstuvwxyz".forEach({
        if !string.lowercased().contains($0) { isPan = false }
    })
    return isPan
}

print("---------------")
print(isPangram2("The quick brown fox jumps over the lazy dog."))  // true
print(isPangram2("The quick brown fox jumped over the lazy dog.")) // false - missing s
