import Foundation

// Complete the sockMerchant function below.
func sockMerchant(n: Int, ar: [Int]) -> Int {

    var colors:Set<Int> = Set<Int>()
    var totalPairs = 0

    for i in ar {
        if !colors.contains(i) {
            colors.insert(i)
        } else {
            totalPairs += 1
            colors.remove(i)
        }
    }
    return totalPairs
}

print(sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]))
