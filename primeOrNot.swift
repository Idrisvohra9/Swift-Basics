import Foundation

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }

    for i in 2 ... number / 2 {
        if number % i == 0 {
            return false
        }
    }

    return true
}

print("Enter a number: ", terminator: "")
let userInput = Int(readLine()!) ?? 0

if isPrime(userInput) {
    print("The number \(userInput) is prime.")
} else {
    print("The number \(userInput) is not prime.")
}
