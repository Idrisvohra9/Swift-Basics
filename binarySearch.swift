func binarySearch(array: [Int], find: Int) -> Int {
    var i = 0
    for elem in array {
        if elem == find {
            return i
        }
        i += 1
    }
    return -1
}

print(binarySearch(array: [99, 87, 212, 121, 9, -1], find: -1))
