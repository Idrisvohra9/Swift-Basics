struct Stack {
    private var items = [Int]()

    // For editing the properties inside a struct or enum
    mutating func push(_ item: Int) {
        items.append(item)
    }

    mutating func pop() -> Int? {
        if items.isEmpty {
            return nil
        } else {
            return items.removeLast()
        }
    }

    func peek() -> Int? {
        if items.isEmpty {
            return nil
        } else {
            return items.last
        }
    }
}

var s = Stack()
s.push(1)
s.push(10)
s.push(91)
s.push(80085)

print(s.peek() ?? "Empty")
print(s)
print(s.pop() ?? "Empty")
print(s)
