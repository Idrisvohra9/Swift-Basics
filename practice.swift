// Q.15
import Foundation

// Q.14

func calculateTotalCost(shopping_cart: [[String: Any]]) -> Int {
  var totalCost = 0
  for item in shopping_cart {
    totalCost += item["price"] as! Int
  }
  return totalCost
}

let totalCost = calculateTotalCost(shopping_cart: [
  ["name": "Peanut Butter", "price": 200], ["name": "Chocolate Spread", "price": 200],
  ["name": "Jelly", "price": 200],
])

print("Q.14 Ans.->", totalCost)

class Shape {
  let radius: Float
  let height: Float
  let width: Float
  let pi: Float = 3.14

  init(_ radius: Float?, _ height: Float?, _ width: Float?) {
    self.radius = radius ?? 0.0 // Use nil-coalescing operator to handle optional radius
    self.height = height ?? 0.0 // Use nil-coalescing operator to handle optional height
    self.width = width ?? 0.0 // Use nil-coalescing operator to handle optional width
  }
}

class Circle: Shape {
  func calculateArea() -> Float {
    return pi * pow(radius, 2)
  }

  // Override the superclass initializer to properly initialize properties
  override init(_ radius: Float?, _ height: Float?, _ width: Float?) {
    super.init(radius, height, width)
  }
}

// Usage
let circle = Circle(10, nil, nil) // Create an instance of Circle with radius = 10 and nil for height and width
let area = circle.calculateArea() // Calculate the area of the circle
print("Q.15 Ans.->", area) // Print the calculated area

// Q.16:
// Here we have to specify the data type in detail instead of using the data type Array which is too generic.

let toDescending = { (arr: [String]) -> [String] in
  arr.sorted(by: { $0 > $1 })
}

let array = ["John", "Idris", "Moses", "Jesus", "Jacob"]

print("Q.16 Ans.->", toDescending(array))

// We have to see if the argument has a redundant argument or not if it does and we specified the name then it will throw an error

let onlyEven = { (arr: [Int]) -> [Int] in
  arr.filter { $0 % 2 == 0 }
}

let numArray = [10, 5, 3, 9, 11, 15, 16]
print("Q.17 Ans.->", onlyEven(numArray))

// Q.10
func average(numbers: [Int]) -> Double {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return Double(sum) / Double(numbers.count)
}

print("Q.10 Ans.->", average(numbers: numArray))

// Q.8
func findLargest(numbers: [Int]) -> Int {
  var largest = numbers[0]

  for number in numbers {
    if number > largest {
      largest = number
    }
  }
  return largest
}

print("Q8. Ans-> \(findLargest(numbers: numArray))")
