import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {

    var totalPositive:Float = 0
    var totalNegative:Float = 0
    var totalZeros:Float = 0

    let totalCount: Float = Float(arr.count)
    for i in arr {
        if i > 0 {
            totalPositive += 1
        } else if i < 0 {
            totalNegative += 1
        } else {
            totalZeros += 1
        }
    }

    print(totalPositive/totalCount)
    print(totalNegative/totalCount)
    print(totalZeros/totalCount)
}


plusMinus(arr: [1, 1, 0, -1, -1])
print("========")
plusMinus(arr: [-4, 3, -9, 0, 4, 1])
