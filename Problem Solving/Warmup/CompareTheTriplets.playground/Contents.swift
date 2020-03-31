import Foundation

// Complete the compareTriplets function below.
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result = [0,0]
    if a.count == b.count {

        for i in 0..<a.count {
            if a[i] > b[i] {
                result[0] = result[0] + 1
            } else if a[i] < b[i] {
                result[1] = result[1] + 1
            }
        }

    }
    return result
}

let result = compareTriplets(a: [17, 28, 30], b: [99, 16, 8])
print(result)
