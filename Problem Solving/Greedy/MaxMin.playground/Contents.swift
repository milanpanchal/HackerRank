/*:
 # Max Min

 [HackerRank Problem - Max Min](https:www.hackerrank.com/challenges/angry-children/problem "HackerRank Problem - Max Min")

 ---
### Problem Statement
 
 You will be given a list of integers, `arr`, and a single integer `k`. You must create an array of length `k` from elements of `arr` such that its unfairness is minimized. Call that array `subarr`. Unfairness of an array is calculated as `max(subarr) - min(subarr)`
 
 Where:
 - max denotes the largest integer in `subarr`
 - min denotes the smallest integer in `subarr`

 As an example, consider the array `[1, 4, 7, 2]` with a `k` of `2`. Pick any two elements, test `subarr = [4, 7]`.
 
 
 `unfairness = max(4,7) - min(4,7) = 7 - 4 = 3`

 Testing for all pairs, the solution `[1, 2]` provides the minimum unfairness.

 *Note:* Integers in `arr` may not be unique.


 ### Function Description

 Complete the maxMin function in the editor below. It must return an integer that denotes the minimum possible value of unfairness.

 maxMin has the following parameter(s):

 + k: an integer, the number of elements in the array to create
 + arr: an array of integers .


 ### Input Format

 + The first line contains an integer `n`, the number of elements in array `arr`.
 + The second line contains an integer `k`.
 + Each of the next `n` lines contains an integer `arr[i]` where `0 ≤ i < n`.


 ### Constraints
 + 2 ≤ n ≤ 10^5
 + 2 ≤ k ≤ n
 + 0 ≤ arr[i] ≤ 10^9
 
### Output Format

 An integer that denotes the minimum possible value of unfairness.

 ### Sample Input

 ```
 7
 3
 10
 100
 300
 200
 1000
 20
 30
 ```
 ### Sample Output
```
 20
```
*/

import Foundation

// Complete the maxMin function below.
func maxMin(k: Int, arr: [Int]) -> Int {

    assert(arr.count > 1, "There must be atleast two element into the list")
    assert(k > 1, "k should be greater than 1")
    
    var minUnfairness:Int = arr.max()! - arr.min()!
    
    let sortedArray = arr.sorted()
    for i in 0...sortedArray.count - k {
        let diff = (sortedArray[i+k-1] - sortedArray[i])
        minUnfairness = min(minUnfairness, diff)
    }
    
    return minUnfairness
}

maxMin(k: 3, arr: [100, 200, 300, 350, 400, 401, 402]) // 2
maxMin(k: 2, arr: [1, 4, 7, 2]) // 1
maxMin(k: 3, arr: [10, 100, 300, 200, 1000, 20, 30]) // 20
maxMin(k: 4, arr: [1, 2, 3, 4, 10, 20, 30, 40, 100, 200]) // 3
maxMin(k: 2, arr: [1, 2, 1, 2, 1]) // 0
maxMin(k: 2, arr: [1, 25]) // 24
//maxMin(k: 1, arr: [1, 2, 1, 2, 1]) // assert failed

