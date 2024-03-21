func isPalindromeWord(s: String) -> Bool {
    let arr = s.split(separator: "");
    let reversedArr = arr.reversed();

    if (arr.contains(reversedArr)) {
        return true
    }
    else {
        return false
    }
}
print(isPalindromeWord(s: "saas"))
