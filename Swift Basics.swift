// Nil Coalescing:
let a:Int? = nil
print(a ?? 20)

// Range Operator:
let arr = [1...10]
print(arr)
let arr2 = ["Hello", "Dhruvi", "Michael Jackson"]
print(arr2[1...2])

// We can also do something like this:
print(arr2[1..<2])

// And both of the starting and ending range index are optional:

print(arr2[...])
print(arr2[0...])
print(arr2[...2])

// Ternary operator:

let b = 10 > 9 ? "True" : "False"

print(b)

// Strings and characters:

let c = "H"
let str = "Hello"
print(c)
print(str)

// Variables inside string
let name = "Dhruvi"

print("\(name) is a good girl.")
print("\(arr2[1]) is a good girl.")

// Unicode character emojis

print("Idris \u{1F499}")
print("Dhruvi \u{1F923}")

// Empty String:
let str2 = ""

print(str2.isEmpty)

// Mutable String:
// When We use 'let' the variable becomes immutable and constant.
// When we use 'var' the variable stays mutable:

let obj: [String: [String]] = [
    "fruit": ["Mango", "Banana", "Watermelon"],
    "vegetables": ["Capsicum", "Carrots"]
]

print(obj)

let str3 = "Hello, world!"

print(str3[str3.startIndex])
// print(str3.index(1))

var greetings:String = "testing"
let exclamation:Character = "!"
greetings.insert(exclamation, at:greetings.endIndex)
print(greetings)

// Arrays:

// Appending into a new array and manipulating existing array
var numbers = [1, 2, 3, 4, 5]
var newList:[Int] = []
for i in numbers {
    print(i)
    // Appending into a new array
    newList.append(i*10)
    // Manipulating existing array
    numbers[i-1] = i*10
}
print(newList)
print(numbers)


// Sets:

var fruits = Set<String>()
var fruits2: Set<String> = ["Apple", "Banana", "Orange"]
var fruits3 = Set(["Apple", "Banana", "Orange"])
print(fruits)
print(fruits2)
print(fruits3)

// Taking command line user input:
let input = readLine()
print("Your input is \(input)")