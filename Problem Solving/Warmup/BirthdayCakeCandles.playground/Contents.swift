import Foundation

// Complete the birthdayCakeCandles function below.
func birthdayCakeCandles(ar: [Int]) -> Int {
    let maxValue = ar.max()
    return ar.filter{$0 == maxValue}.count

}

print(birthdayCakeCandles(ar: [3, 2, 1, 3]))
