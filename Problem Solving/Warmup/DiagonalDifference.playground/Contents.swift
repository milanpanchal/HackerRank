import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var backwordDiagonalSum = 0
    var forwardDiagonalSum = 0

    let loopCount = arr.count
    for i in 0..<loopCount {
        for j in 0..<loopCount {
            if i == j {
                backwordDiagonalSum += arr[i][j]
            }
            if (i+j) == loopCount - 1 {
                forwardDiagonalSum += arr[i][j]
            }
        }
    }
    return abs(backwordDiagonalSum - forwardDiagonalSum)
}

print(diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]]))
