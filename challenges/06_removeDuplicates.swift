// Remove duplicate letters from a string.
// Write a function that accepts a string as its input and
// return a string with the duplicate letters removed.

func removeDuplicatesFrom(_ input: String) -> String {
    var returnString = Array(input.characters)
    var i = 0
    var length = returnString.count

    while i < length - 1 {
        if returnString[i] == returnString[i+1] {
            returnString.remove(at: i+1)
            length -= 1
        }
        i+=1
    }

    return String(returnString)
}

print(removeDuplicatesFrom("hello")) // helo
print(removeDuplicatesFrom("helo"))  // helo
print(removeDuplicatesFrom("Helllo,, worrld!!"))  // Hello, world!

// ----------------------------------------------------------
// Second approach using a for in and an additive array

func removeDuplicatesFrom2(_ input: String) -> String {
  var usedCharacters = [Character]()

  for letter in input.characters {
    if !usedCharacters.contains(letter) {
      usedCharacters.append(letter)
    }
  }

  return String(usedCharacters)
}

print(removeDuplicatesFrom2("hello")) // helo
print(removeDuplicatesFrom2("helo"))  // helo
print(removeDuplicatesFrom2("Helllo,, worrld!!"))  // Helo, wrd!


// ----------------------------------------------------------
// A third solution - a functional approach using a dictionary
//                    (note: this solution has poor performance)

func removeDuplicatesFrom3(_ input: String) -> String {
  var usedCharacters = [Character: Bool]()

  let result = input.characters.filter {
    usedCharacters.updateValue(true, forKey: $0) == nil
  }

  return String(result)
}

print(removeDuplicatesFrom3("hello")) // helo
print(removeDuplicatesFrom3("helo"))  // helo
print(removeDuplicatesFrom3("Helllo,, worrld!!"))  // Helo, wrd!
