/*:
 # The Hurdle Race

 [HackerRank Problem - The Hurdle Race](https:www.hackerrank.com/challenges/the-hurdle-race/problem "HackerRank Problem - The Hurdle Race")

 ---
### Problem Statement
 
 Dan is playing a video game in which his character competes in a hurdle race. Hurdles are of varying heights, and Dan has a maximum height he can jump. There is a magic potion he can take that will increase his maximum height by  unit for each dose. How many doses of the potion must he take to be able to jump all of the hurdles.

 Given an array of hurdle heights `height`, and an initial maximum height Dan can jump, `k`, determine the minimum number of doses Dan must take to be able to clear all the hurdles in the race.

 For example, if `height = [1, 2, 3, 3, 2]` and Dan can jump `1` unit high naturally, he must take `3 - 1 = 2` doses of potion to be able to jump all of the hurdles.
 

 ### Function Description

 Complete the hurdleRace function in the editor below. It should return the minimum units of potion Dan needs to drink to jump all of the hurdles.

 hurdleRace has the following parameter(s):

 + k: an integer denoting the height Dan can jump naturally
 + height: an array of integers denoting the heights of each hurdle


 ### Input Format

 The first line contains two space-separated integers `n` and `k`, the number of hurdles and the maximum height Dan can jump naturally.

 The second line contains `n` space-separated integers `height[i]` where `0 ≤ i < n`.


 ### Constraints
 + 1 ≤ n, k ≤ 100
 + 1 ≤ height[i] ≤ 100
 
### Output Format

 Print an integer denoting the minimum doses of magic potion Dan must drink to complete the hurdle race.

 ### Sample Input

 ```
 5 4
 1 6 3 5 2

 ```
 ### Sample Output
```
 2
```
*/

import Foundation

// Complete the hurdleRace function below.
func hurdleRace(k: Int, height: [Int]) -> Int {

    if let maxHurdleHeight = height.max(), k < maxHurdleHeight {
        return maxHurdleHeight - k
    }
    return 0
}

hurdleRace(k: 4, height: [1, 6, 3, 5, 2]) // 2
hurdleRace(k: 7, height: [2, 5, 4, 5, 2]) // 0
hurdleRace(k: 1, height: [1, 2, 3, 3, 2]) // 2

