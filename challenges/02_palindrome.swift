// Is a string a palindrome?
// Write a function that accepts a String as its only parameter, and returns
// true if the string reads the same when reversed, ignoring case.

func isPalindrome(_ input: String) -> Bool {
  let reversedInput = String(input.characters.reversed())
  if input == reversedInput {
    return true
  }
  return false
}

// the one line of code solution
func isPalindrome2(_ input: String) -> Bool {
  return String(input.characters.reversed()) == input
}

// case insensitive
func isPalindromeCaseInsensitive(_ input: String) -> Bool {
  return String(input.lowercased().characters.reversed()) == input.lowercased()
}

print(isPalindrome("rotator"))     // true
print(isPalindrome("palindrome"))  // false

print(isPalindrome2("rotator"))     // true
print(isPalindrome2("roTator"))     // false - not case sensitive
print(isPalindrome2("palindrome"))  // false

print(isPalindromeCaseInsensitive("rotator"))     // true
print(isPalindromeCaseInsensitive("roTator"))     // true - case sensitive
print(isPalindromeCaseInsensitive("palindrome"))  // false
