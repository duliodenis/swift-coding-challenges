// Do two strings contain the same characters?
// Write a function that accepts two String parameters, and returns
// true if they contain the same characters in any order.

func isSameCharacters(_ input1: String, _ input2: String) -> Bool {
  let input1Array = Array(input1.characters)
  var input2Array = Array(input2.characters)

  // brute force - O(n^2)
  for input1char in input1Array {
    for input2char in input2Array {
      // nested for loops check for matches
      if input2char == input1char {
        // remove the match
        if let index = input2Array.index(of: input2char) {
          input2Array.remove(at: index)
        }
      }
    }
    // if everything matched the array is empty - return true
    if input2Array.count == 0 {
      return true
    }
  }
  // otherwise the strings did not match - return false
  return false
}

// tighen up the check and return code
func isSameCharacters2(_ input: String, _ check: String) -> Bool {
  let inputArray = Array(input.characters)
  var checkArray = Array(check.characters)

  // brute force - O(n^2)
  for inputChar in inputArray {
    // remove this character if its found in the check array
    if let index = checkArray.index(of: inputChar) {
      checkArray.remove(at: index)
    }
  }
  return checkArray.count == 0
}

// sorted arrays - O(n log n)
func isSameCharactersSorted(_ input: String, _ check: String) -> Bool {
  let inputArray = Array(input.characters)
  let checkArray = Array(check.characters)

  return inputArray.sorted() == checkArray.sorted()
}

print(isSameCharacters("hello", "world")) // false
print(isSameCharacters("hello", "hello")) // true

print(isSameCharacters2("hello", "world")) // false
print(isSameCharacters2("hello", "hello")) // true

print(isSameCharactersSorted("hello", "world")) // false
print(isSameCharactersSorted("hello", "hello")) // true
