/*:
 # Greedy Florist

 [HackerRank Problem - Greedy Florist](https://www.hackerrank.com/challenges/greedy-florist/problem "HackerRank Problem - Greedy Florist")

 ---
### Problem Statement
 
 A group of friends want to buy a bouquet of flowers. The florist wants to maximize his number of new customers and the money he makes. To do this, he decides he'll multiply the price of each flower by the number of that customer's previously purchased flowers plus `1`. The first flower will be original price, `(0+1) x original price`, the next will be `(1+1) x original price` and so on.


 Given the size of the group of friends, the number of flowers they want to purchase and the original prices of the flowers, determine the minimum cost to purchase all of the flowers.

 For example, if there are `k = 3` friends that want to buy `n = 4` flowers that cost `c = [1, 2, 3, 4]` each will buy one of the flowers priced `[2, 3, 4]` at the original price. Having each purchased `x = 1` flower, the first flower in the list, `c[0]`, will now cost `(current purchase + previous purchase) x c[0] = (1 + 1) x 1 = 2`. The total cost will be `2 + 3 + 4 + 2 = 11`.

 ### Function Description

 Complete the getMinimumCost function in the editor below. It should return the minimum cost to purchase all of the flowers.

 getMinimumCost has the following parameter(s):

 + c: an array of integers representing the original price of each flower
 + k: an integer, the number of friends

 ### Input Format

 The first line contains two space-separated integers `n` and `k`, the number of flowers and the number of friends.
 The second line contains `n` space-separated positive integers `c[i]`, the original price of each flower.


 ### Constraints
 1 ≤ n, k ≤ 100\
 1 ≤ c[i] ≤ 10^6\
 answer < 2^31\
 0 ≤ i < n

### Output Format

 Print the minimum cost to buy all `n` flowers.


 ### Sample Input 1

 ```
 3 2
 2 5 6
 ```
 ### Sample Output 1
```
 15
```
 
 */
import Foundation

// Complete the getMinimumCost function below.
func getMinimumCost(k: Int, c: [Int]) -> Int {

    if k == c.count {
        return c.reduce(0, +)
    } else if k < c.count {
        let flowersPrice = c.sorted(by: >)
        var sum = 0
        for (index, val) in flowersPrice.enumerated() {
            sum += (index/k+1)*val
        }
        return sum
        
    }
    
    return 0
}

getMinimumCost(k: 3, c: [2, 5, 6]) // 13
getMinimumCost(k: 2, c: [2, 5, 6]) // 15
getMinimumCost(k: 3, c: [1, 3, 5, 7, 9]) // 29
