import Foundation

//https://www.hackerrank.com/challenges/priyanka-and-toys/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign

// Complete the toys function below.
func toys(w: [Int]) -> Int {
    var totalContainers = 1
    
    let weights = w.sorted()
    var container = [Int]()

    for val in weights {
        
        
        if (container.count == 0) || (val <= container.first! + 4) {
            container.append(val)
        } else {
            container = []
            container.append(val)
            totalContainers += 1
        }
        
    }

    return totalContainers

}

toys(w: [1, 2, 3, 4, 5, 10, 11, 12, 13]) // 2
toys(w: [1, 2, 3, 21, 7, 12, 14, 21]) // 4
toys(w: [12, 15, 7, 8, 19, 24]) // 4
