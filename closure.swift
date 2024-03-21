let c = {
    print("This is a closure (Lambda function)")
}

c()

let add = {(a: Int, b: Int) -> Int in 
    return a + b
}

var result = add(10, 20)
print(result)

let multiply = {(a: Int, b: Int) -> Int in
    return a * b;
}

func performCalculation(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

result = performCalculation(a: 20, b: 40, operation: multiply);
print(result)

// We can also use closures in built-in swift methods like the following for sorting the array names in ascending order

let arr = ["Idris", "Aryan", "Bryan", "Sad"]

let ascendingNames = arr.sorted(by:{(s1:String, s2:String) -> 
Bool in return s1 < s2})

print(ascendingNames)

let abc = arr.map{(a) -> String in return a + "!"}
print(abc)

