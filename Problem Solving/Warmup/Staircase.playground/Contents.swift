import Foundation

// Complete the staircase function below.
func staircase(n: Int) -> Void {

    for i in 1...n {
        print(String(repeating: " ", count: n-i) + String(repeating: "#", count: i))
    }
}

staircase(n: 6)
