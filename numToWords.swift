func numToWords(input: String) -> Void {
    let arr = input.split(separator: "")
    var result = ""
    let wordDict = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
    arr.map{(elem) -> String in 
        result += wordDict[Int(elem)!] ?? ""
        return result
    }
    print(result)
}

let input = readLine() ?? ""
numToWords(input: input.isEmpty ? "2003" : input)