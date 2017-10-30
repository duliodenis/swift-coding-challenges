// Challenge 11: Three Different Letters
// Write a function that accepts two strings, and returns true if they are
// identical in length but have no more than three different letters.

func threeLetterDiff(_ input1: String, _ input2: String) -> Bool {
    if input1.characters.count != input2.characters.count { return false }
    var difference = 0

    for letter in input1.characters {
        if input2.characters.contains(letter) == false {
            difference += 1
        }
        if difference > 3 { return false }
    }

    return true
}

print("---------------")
print(threeLetterDiff("One", "Three"))      // false - different length
print(threeLetterDiff("String", "Threes"))  // false - 4 letter difference
print(threeLetterDiff("Hello", "World"))    // true - 3 letter difference
print(threeLetterDiff("Clamp", "Cramp"))    // true  - 1 letter difference

//Swift 4
func threeLetterDiff2(_ strOne: String, _ strTwo: String) -> Bool {
    guard strOne.count == strTwo.count else { return false }
    let setOne = Set(strOne)
    return setOne.subtracting(strTwo).count <= 3
}

print("---------------")
print(threeLetterDiff2("One", "Three"))      // false - different length
print(threeLetterDiff2("String", "Threes"))  // false - 4 letter difference
print(threeLetterDiff2("Hello", "World"))    // true - 3 letter difference
print(threeLetterDiff2("Clamp", "Cramp"))    // true  - 1 letter difference
