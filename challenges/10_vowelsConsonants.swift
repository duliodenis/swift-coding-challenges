// Challenge 10: Vowels and Consonants
// Write a function that returns a tuple containing the number of vowels and consonants.

func vowelConsonants(_ input: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou".characters
    let consonants = "bcdfghjklmnpqrstvwxyz".characters
    var vowelCount = 0
    var consonantCount = 0

    for letter in input.lowercased().characters {
        if consonants.contains(letter) {
            consonantCount += 1
        } else {
            // check again to weed out punctuations
            if vowels.contains(letter) {
                vowelCount += 1
            }
        }
    }
    return (vowelCount, consonantCount)
}

print("---------------")
print(vowelConsonants("hello, world")) // (3, 7)
print(vowelConsonants("Mississippi"))  // (4, 7)


//Swift 4
func vowelConsonants2(_ str: String) -> (vowels: Int, consonants: Int) {
    var numOfVow = 0
    var numOfCon = 0
    str.lowercased().forEach {
        if  "bcdfghjklmnpqrstvwxyz".contains($0) { numOfCon += 1 }
        else if "aeiou".contains($0) { numOfVow += 1 }
    }
    return (numOfVow, numOfCon)
}

print("---------------")
print(vowelConsonants2("hello, world")) // (3, 7)
print(vowelConsonants2("Mississippi"))  // (4, 7)
