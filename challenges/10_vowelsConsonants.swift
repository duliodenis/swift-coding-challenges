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
