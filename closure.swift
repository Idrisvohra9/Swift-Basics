let c = {
    print("This is a closure (Lambda function)")
}

c()

let add = { (a: Int, b: Int) -> Int in
    a + b
}

// In closures the arguments by default become positional arguments i.e. we do not need to specify the name of the argument to pass it a value.
var result = add(10, 20)
print(result)

let multiply = { (a: Int, b: Int) -> Int in
    a * b
}

func performCalculation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

result = performCalculation(a: 20, b: 40, operation: multiply)
print(result)

// We can also use closures in built-in swift methods like the following for sorting the array names in ascending order

let arr = ["Idris", "Aryan", "Bryan", "Sad"]

let ascendingNames = arr.sorted(by: { (s1: String, s2: String) ->
        Bool in s1 < s2
})

print(ascendingNames)

let abc = arr.map { a -> String in a + "!" }
print(abc)
