// Dictionaries in Swift

// A dictionary is a collection of key-value pairs similar to a Map in other languages.
// The key is used to uniquely identify a value in the dictionary.

// Here is an example of creating a simple dictionary:
// Unlike other languages the dictionary data type along with other collection data types
var ages = ["John": 35, "Mary": 28, "Bob": 42]
// This creates a dictionary with string keys and integer values

// Access values using subscript syntax with the key:
// Prints 35
print(ages["John"]!)

// Add new key-value pairs:
ages["Sarah"] = 25

// Update existing values:
ages["John"] = 36

// Remove keys:
ages["Bob"] = nil

// Check if dictionary contains a key:
if ages.contains(where: (["Mary"]) throws -> Bool) {
    print("Mary is in the dictionary")
}

// Iterate over keys and values:
for (name, age) in ages {
    print("\(name) is \(age) years old")
}

// Dictionaries can also have complex keys and values:

struct Person {
    var name: String
    var age: Int
}

let people = [
    Person(name: "John", age: 36): "555-1234",
    Person(name: "Mary", age: 28): "555-5678",
]

// Access the phone number with the Person key:
let johnsNumber = people[Person(name: "John", age: 36)]

// Dictionaries are very useful for modeling real-world data and relationships.
// They allow fast lookup via unique keys.
