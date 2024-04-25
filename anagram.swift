let input1 = "that"
let input2 = "taht"

let arr1 = input1.lowercased().split(separator: "").sorted()
let arr2 = input2.lowercased().split(separator: "").sorted()

if arr1.contains(arr2) {
    print(true)
} else {
    print(false)
}
