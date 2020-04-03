/*:
  # Largest Permutation
  [HackerRank Problem - Largest Permutation](https://www.hackerrank.com/challenges/largest-permutation/problem "HackerRank Problem - Largest Permutation")

 ---
  You are given an unordered array of unique integers incrementing from 1. You can swap any two elements a limited number of times. Determine the largest lexicographical value array that can be created by executing no more than the limited number of swaps.

  For example, if `arr = [1, 2, 3, 4]` and the maximum swaps `k = 1`, the following arrays can be formed by swapping the 1 with the other elements:

 ```
 [2,1,3,4]
 [3,2,1,4]
 [4,2,3,1]
 ```
  The highest value of the four (including the original) is `[4,2,3,1]`. If `k ≥ 2`, we can swap to the highest possible value: `[4, 3, 2, 1]`.

  ### Function Description

  Complete the largestPermutation function in the editor below. It must return an array that represents the highest value permutation that can be formed.

  largestPermutation has the following parameter(s):

  + k: an integer that represents the limit of swaps
  + arr: an array of integers

  ### Input Format

  The first line contains two space-separated integers `n` and `k`, the length of `arr` and the maximum swaps that can be performed. The second line contains `n` unique space-separated integers `arr[i]` where `1 ≤ arr[i] ≤ n`.

  ### Constraints

  1 ≤ n ≤ 10^5
  
  1 ≤ n ≤ 10^9

  ### Output Format

  Print the lexicographically largest permutation you can make with at most `k` swaps.
  
 */

import Foundation

// Complete the largestPermutation function below.
func largestPermutation(k: Int, arr: [Int]) -> [Int] {

    var givenArray = arr
    var sortedArray = arr.sorted()
    var totalSwap = k
    
    for index in 0..<arr.count - 1 {
        
        if totalSwap == 0 { // no more swaping require
            break
        }
        
        if let maxValue = sortedArray.last ,
            let indexForMaxValue = givenArray.firstIndex(of: maxValue) {
            
            if index != indexForMaxValue {
                // print("swaping \(givenArray[index]) -> \(givenArray[indexForMaxValue])")
                givenArray.swapAt(index, indexForMaxValue)
                totalSwap -= 1
            }
            
            sortedArray.removeLast()
        }
        
    }
    return givenArray
}

largestPermutation(k: 1, arr: [1, 2, 3, 4]) // [4, 2, 3, 1]
largestPermutation(k: 1, arr: [4, 2, 3, 5, 1]) // [5, 2, 3, 4, 1]
largestPermutation(k: 1, arr: [2, 1, 3]) // [3, 1, 2]
largestPermutation(k: 1, arr: [2, 1]) // [2, 1]

largestPermutation(k: 2, arr: [1, 2, 3, 4]) // [4, 3, 2, 1]
largestPermutation(k: 2, arr: [4, 2, 3, 5, 1]) // [5, 4, 3, 2, 1]
