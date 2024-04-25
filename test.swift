let size = 5

for i in 1...size {
  for _ in 1...size - i {
    print(" ", terminator: "")
  }
  for _ in 1...2 * i - 1 {
    print("*", terminator: "")
  }
  print("")
}

for i in stride(from: size - 1, through: 1, by: -1) {
  for _ in 1...size - i {
    print(" ", terminator: "")
  }
  for _ in 1...2 * i - 1 {
    print("*", terminator: "")
  }
  print("")
}
