import Foundation

// Complete the aVeryBigSum function below.
func aVeryBigSum(ar: [Int]) -> Int {

    return ar.reduce(0,+)
}

print(aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]))
