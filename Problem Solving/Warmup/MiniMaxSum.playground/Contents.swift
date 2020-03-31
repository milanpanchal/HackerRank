import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {

    let totalSum = arr.reduce(0,+)
    print("\(totalSum-arr.max()!) \(totalSum-arr.min()!)")
}

miniMaxSum(arr: [1, 2, 3, 4, 5])
