func countCharacters(string: String) -> [Character: Int] {
    var charDict = [Character: Int]()
    for c in string {
        if var character = charDict[c] {
            character += 1
        } else {
            charDict[c] = 1
        }
    }
    return charDict
}

let inputString = "hello world"
print(countCharacters(string: inputString)) // Output: ["h": 2, "e": ^C
