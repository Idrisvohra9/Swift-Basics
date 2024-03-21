func toPilotAlphabets(str: String) -> Void {
    let phoneticAlphabet: [Character: String] = [
    "A": "Alpha",
    "B": "Bravo",
    "C": "Charlie",
    "D": "Delta",
    "E": "Echo",
    "F": "Foxtrot",
    "G": "Golf",
    "H": "Hotel",
    "I": "India",
    "J": "Juliett",
    "K": "Kilo",
    "L": "Lima",
    "M": "Mike",
    "N": "November",
    "O": "Oscar",
    "P": "Papa",
    "Q": "Quebec",
    "R": "Romeo",
    "S": "Sierra",
    "T": "Tango",
    "U": "Uniform",
    "V": "Victor",
    "W": "Whiskey",
    "X": "X-ray",
    "Y": "Yankee",
    "Z": "Zulu"
    ]
    var target = str
    var result = ""
    target.replace(" ", with: "")
    let uppercased = target.uppercased()
    let keys = phoneticAlphabet.keys
    for c in uppercased{
        if keys.contains(c){
            result += phoneticAlphabet[c]! + " "
        } else {
            result += String(c)
        }
    }
    print(result)
}

toPilotAlphabets(str: "Hello There, Big Boy!")
toPilotAlphabets(str: "Sign the contract big boy!")
