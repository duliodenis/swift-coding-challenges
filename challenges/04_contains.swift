// Does one String contain another String?
// Write your own version of the contains method on String that
// ignores letter case.
// See: https://developer.apple.com/reference/swift/string/1643241-contains
//  Returns true iff other is non-empty and contained within self by
//  case-sensitive, non-literal search.

import Foundation

extension String {
  func doesContain(_ substring: String) ->  Bool {
    return self.lowercased().range(of: substring.lowercased()) != nil
  }
}

print("hello".doesContain("world")) // false
print("hello".doesContain("hello")) // true
