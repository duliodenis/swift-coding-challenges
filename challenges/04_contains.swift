// Does one String contain another String?
// Write your own version of the contains method on String that
// ignores letter case.
// See: https://developer.apple.com/reference/swift/string/1643241-contains
//  Returns true iff other is non-empty and contained within self by
//  case-sensitive, non-literal search.

extension String {
  func doesContain(_ find: String) ->  Bool {
    return true
  }
}

print("hello".doesContain("world")) // false
print("hello".doesContain("hello")) // true
