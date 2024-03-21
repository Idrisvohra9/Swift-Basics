func expandedForm(_ num: Int) -> String {
    var result = ""
    var divisor = 1
    
    // Loop until the divisor is greater than the number
    while divisor * 10 <= num {
        divisor *= 10
        // print(divisor)
        
    }
    
    var remaining = num
    
    // Loop through each digit of the number
    while divisor > 0 {
        let digit = remaining / divisor
        if digit > 0 {
            if !result.isEmpty {
                result += " + "
            }
            result += "\(digit * divisor)"
        }
        remaining %= divisor
        divisor /= 10
    }
    
    return result +  " = \(num)"
}

// Test cases
print(expandedForm(12))    // Output: "10 + 2"
print(expandedForm(42))    // Output: "40 + 2"
print(expandedForm(70304)) // Output: "70000 + 300 + 4"
print(expandedForm(101013002))    // Output: "10 + 2"
