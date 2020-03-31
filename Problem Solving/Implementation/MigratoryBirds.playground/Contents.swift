import Foundation

// Complete the migratoryBirds function below.
func migratoryBirds(arr: [Int]) -> Int {

    let mode = arr.reduce([Int: Int]()) {
        var counts = $0
        counts[$1] = ($0[$1] ?? 0) + 1
        return counts
    }

    var minKey = 0
    var maxValue = 0
    for (key, value) in mode {
    
        if maxValue < value {
            maxValue = value
            minKey = key
        } else if maxValue == value  && key < minKey {
            minKey = key
        }

    }

    return minKey

}

print(migratoryBirds(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]))
