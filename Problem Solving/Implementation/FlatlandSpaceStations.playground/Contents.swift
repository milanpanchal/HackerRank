import Foundation

// Complete the flatlandSpaceStations function below.
func flatlandSpaceStations(n: Int, c: [Int]) -> Int {
    

//    n: the number of cities
//    c: an integer array that contains the indices of cities with a space station, -based indexing
    
    if n == c.count {
        return 0
    }
    
    var distance = [Int]()
    for i in 0..<n {
        if c.contains(i) {
            distance.append(0)
        } else {
            if let min = c.map({abs($0-i)}).min() {
                distance.append(min)
            }
        }
    }
    return distance.max() ?? 0

}

var response = flatlandSpaceStations(n: 5, c: [0, 4])
response = flatlandSpaceStations(n: 6, c: [0, 1, 2, 4, 3, 5])
print(response)
