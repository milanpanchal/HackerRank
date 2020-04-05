/*:
 # Chocolate Feast

 [HackerRank Problem - Counting Valleys](https:www.hackerrank.com/challenges/chocolate-feast/problem "HackerRank Problem - Chocolate Feast")

 ---
### Problem Statement
 
 Little Bobby loves chocolate. He frequently goes to his favorite `5 & 10` store, Penny Auntie, to buy them. They are having a promotion at Penny Auntie. If Bobby saves enough wrappers, he can turn them in for a free chocolate.

 For example, Bobby has `n = 15` to spend on bars of chocolate that cost `c = 3` each. He can turn in `m = 2` wrappers to receive another bar. Initially, he buys `5` bars and has `5` wrappers after eating them. He turns in `4` of them, leaving him with `1`, `2` for  more bars. After eating those two, he has `3` wrappers, turns in `2` leaving him with `1` wrapper and his new bar. Once he eats that one, he has `2` wrappers and turns them in for another bar. After eating that one, he only has `1` wrapper, and his feast ends. Overall, he has eaten `5 + 2 + 1 + 1 = 9` bars.

 ### Function Description

 Complete the chocolateFeast function in the editor below. It must return the number of chocolates Bobby can eat after taking full advantage of the promotion.

 chocolateFeast has the following parameter(s):

 + n: an integer representing Bobby's initial amount of money
 + c: an integer representing the cost of a chocolate bar
 + m: an integer representing the number of wrappers he can turn in for a free bar

 *Note:* Little Bobby will always turn in his wrappers if he has enough to get a free chocolate.


 ### Input Format

 The first line contains an integer,`t` , denoting the number of test cases to analyze.
 
 Each of the next `t` lines contains three space-separated integers: `n`, `c`, and `m`. They represent money to spend, cost of a chocolate, and the number of wrappers he can turn in for a free chocolate.


 ### Constraints
 1 ≤ t ≤ 1000\
 2 ≤ n ≤ 10^5\
 1 ≤ c ≤ n\
 2 ≤ m ≤ n
 
### Output Format

 For each trip to Penny Auntie, print the total number of chocolates Bobby eats on a new line.

 ### Sample Input

 ```
 3
 10 2 5
 12 4 4
 6 2 2

 ```
 ### Sample Output
```
 6
 3
 5
```
 

*/


import Foundation

// Complete the chocolateFeast function below.
func chocolateFeast(n: Int, c: Int, m: Int) -> Int {

    var maxChocolateAte = n/c
    var numberOfWrappers = maxChocolateAte
    
    while numberOfWrappers >= m {
        let newChocolateThruWrapper = numberOfWrappers / m
        maxChocolateAte += newChocolateThruWrapper
        numberOfWrappers = numberOfWrappers-(newChocolateThruWrapper * m) + newChocolateThruWrapper
    }

    return maxChocolateAte
}

chocolateFeast(n: 10, c: 2, m: 5) // 6
chocolateFeast(n: 12, c: 4, m: 4) // 3
chocolateFeast(n: 6, c: 2, m: 2) // 5
chocolateFeast(n: 7, c: 3, m: 2) // 3

