import Foundation

// Complete the maximumToys function below.
func maximumToys(prices: [Int], k: Int) -> Int {
    var totalToys = 0
    var toysTotalPrice = 0
    
    let sortedPrice = prices.sorted()
    
    for toyPrice in sortedPrice {
         
        toysTotalPrice += toyPrice
        
        if toysTotalPrice > k {
            break
        }
        
        totalToys += 1

    }
    return totalToys
}

let maxToys1 = maximumToys(prices: [1, 12, 5, 111, 200, 1000, 10], k: 50)
let maxToys2 = maximumToys(prices: [1, 2, 3, 7], k: 7)
let maxToys3 = maximumToys(prices: [3, 7, 2, 9, 4], k: 15)
