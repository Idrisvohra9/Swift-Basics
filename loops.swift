// For In Loop
print("Zero to ten")
// Zero to ten:
for i in 0...10{
    print(i)
}
print("Zero to nine")
// Zero to nine:
for i in 0..<10{
    print(i)
}
print("Ten to 0")
// Ten to 0
for i in stride(from: 10, to:0, by: -1){
    print(i)
}
// While loop
var count = 0
while count <= 10{
    print(count)
    count += 1
}
count = 0

// Repeat While Loop
// It will go through the last value and increment one more round
repeat {
    count += 1
} while count <= 10
    print(count)
