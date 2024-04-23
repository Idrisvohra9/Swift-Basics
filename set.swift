// Sets in Swift

// A set is an unordered collection of unique elements.
// Sets are declared using the Set type:

var numbers: Set = [1, 2, 3, 4]

// Creating an empty set:
var letters = Set<Character>()

// Adding elements:
letters.insert("a")
letters.insert("b")

// Checking if a set contains an element:
if letters.contains("a") {
    print("a is in the set")
}

// Getting the number of elements:
print("There are \(letters.count) letters in the set")

// Iterating over a set:
for letter in letters {
    print(letter)
}

// Set operations:

let odds: Set = [1, 3, 5]
let evens: Set = [2, 4, 6]

// Union - combines two sets
let primeNumbers = odds.union(evens)
print(primeNumbers)
// Intersection - elements common to both sets
let common = odds.intersection(evens)
print(common)
// Subtracting - elements in odds that are not in evens
let diff = odds.subtracting(evens)
print(diff)
// Checking for disjoint sets:
let isDisjoint = odds.isDisjoint(with: evens)
print(isDisjoint)

// Set membership:
if evens.isSuperset(of: odds) {
    print("evens contains all elements in odds")
}

if !odds.isStrictSubset(of: evens) {
    print("odds does not contain fewer elements than evens")
}

// Removing elements:
var mutableSet = letters
mutableSet.remove("a")

// Removing all elements:
mutableSet.removeAll()
