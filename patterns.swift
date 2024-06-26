// Right angle triangle
func printRightAngled(height: Int) {
    print("Right angle triangle:")

    for i in 0 ..< height {
        for _ in 0 ... i {
            print("* ", terminator: "")
        }
        print()
    }
}

printRightAngled(height: 5)

func printRightAngledUpsideDown(height _: Int) {
    print("Right angle triangle upside down:")

    for i in stride(from: 6, to: 0, by: -1) {
        for _ in 0 ... i - 1 {
            print("* ", terminator: "")
        }
        print()
    }
}

printRightAngledUpsideDown(height: 5)

func printPyramid(height: Int) {
    print("Pyramid triangle")

    // Iterate through each row of the pyramid
    for i in 0 ..< height {
        // Print leading spaces
        for _ in 0 ..< (height - i - 1) {
            print("  ", terminator: "")
        }

        // Print stars for the current row
        for _ in 0 ..< (2 * i + 1) {
            print("* ", terminator: "")
        }

        // Move to the next line after each row
        print()
    }
}

printPyramid(height: 5)

func printDiamond(height: Int) {
    print("Diamond")
    for i in 0 ..< height {
        // Print leading spaces
        for _ in 0 ..< (height - i - 1) {
            print("  ", terminator: "")
        }

        // Print stars for the current row
        for _ in 0 ..< (2 * i + 1) {
            print("* ", terminator: "")
        }

        // Move to the next line after each row
        print()
    }
    for i in stride(from: height - 1, through: 0, by: -1) {
        // Print leading spaces
        for _ in stride(from: height - i - 1, through: 0, by: -1) {
            print("  ", terminator: "")
        }

        // Print stars for the current row
        for _ in stride(from: 2 * i - 2, through: 0, by: -1) {
            print("* ", terminator: "")
        }

        // Move to the next line after each row
        print()
    }
}

printDiamond(height: 5)
