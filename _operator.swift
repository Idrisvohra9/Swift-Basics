// '_' operator:
// $ First use case to ignore an un-used or un-needed value:

let tuple = (1, 2)
let (_, secondValue) = tuple // Here, `_` is used to ignore the first value of the tuple

// Switch statement where only the case condition matters, not the value binding
let number = 42
switch number {
case _:
    print("Matched any number")
}


// Function Parameters:
// When defining a function, you can use _ as a parameter name to indicate that the parameter label should be omitted when calling the function:
func greet(_ name: String) {
    print("Hello, \(name)!")
}

greet("John") // Here, we call the function without specifying the parameter label

func someFunctionThatReturnsAValue() -> Int{
    print("Hello, Mate!")
    return 1;
}
// Discard the value returned by the function
_ = someFunctionThatReturnsAValue() // Discards the returned value

let list = [1, 2, 3, 4, 5, 6, 7, 8]

// Use as placeholder in anonymous functions (This is not a use of the _ operator)
let doubled = list.map{$0 * 2} // Using _ as a placeholder for each element in the list
print(doubled)