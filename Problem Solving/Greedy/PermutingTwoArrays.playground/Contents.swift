import Foundation

// Complete the twoArrays function below.
func twoArrays(k: Int, A: [Int], B: [Int]) -> String {

    let asceA = A.sorted()
    let descB = B.sorted(by: >)
    var permutationExists = "YES"
    
//    print(asceA)
//    print(descB)

    for i in 0..<asceA.count {
        if asceA[i] + descB[i] < k {
            permutationExists = "NO"
            break
        }
    }

    return permutationExists
}

twoArrays(k: 10, A: [2, 1, 3], B: [7, 8, 9]) // YES
twoArrays(k: 5, A: [1, 2, 2, 1], B: [3, 3, 3, 4]) // NO
twoArrays(k: 10, A: [7, 6, 8, 4, 2], B: [5, 2, 6, 3, 1]) // NO


