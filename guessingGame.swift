print("Guess the number!")

let answer = Int.random(in: 1 ... 100)
var guess = 0
var tries = 0

repeat {
    print("Enter your guess: ", terminator: "")
    let input = readLine()!
    guess = Int(input) ?? 0

    tries += 1

    if guess > answer {
        print("Too high!")
    } else if guess < answer {
        print("Too low!")
    } else {
        print("You got it! The answer was \(answer)")
        print("It took you \(tries) tries")
    }

} while guess != answer

print("Game over!")
