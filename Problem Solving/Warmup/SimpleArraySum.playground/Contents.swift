import Foundation

/*
 * Complete the simpleArraySum function below.
 */
func simpleArraySum(ar: [Int]) -> Int {
    /*
     * Write your code here.
     */
    return ar.reduce(0, +)
}

print(simpleArraySum(ar: [1, 2, 3, 4, 10, 11]))
