// Are the letters unique?
// Write a function that accepts a string as its only param and returns
// true if the string has only unique letters taking letter case into account.
func isUnique(_ input: String) -> Bool {
  var checkLetter = [Character]()
  for letter in input.characters {
    if checkLetter.contains(letter) {
      return false
    }
    checkLetter.append(letter)
  }

	return true
}

func isUnique2(_ input: String) -> Bool {
  return Set(input.characters).count == input.characters.count
}

// call function
print(isUnique("AaBbCc"))         // true
print(isUnique("Hello, world!"))  // false

print(isUnique2("AaBbCc"))         // true
print(isUnique2("Hello, world!"))  // false

// Swift 4
func isUnique3(_ input: String) -> Bool {
    return Set(input).count == input.count
}


print(isUnique3("AaBbCc"))         // true
print(isUnique3("Hello, world!"))  // false
