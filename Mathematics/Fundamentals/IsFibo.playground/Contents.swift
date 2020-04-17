/*:
 # Is Fibo

 [HackerRank Problem - Is Fibo](https:www.hackerrank.com/challenges/is-fibo/problem "HackerRank Problem - Is Fibo")

 ---
### Problem Statement
 
 You are given an integer, `N`. Write a program to determine if `N` is an element of the Fibonacci sequence.

 The first few elements of the Fibonacci sequence are `0, 1, 1, 2, 3, 5, 8, 13, 21, ...`.  A Fibonacci sequence is one where every element is a sum of the previous two elements in the sequence. The first two elements are `0` and `1`.
 
 ### Input Format

 The first line contains `T`, number of test cases.
 
`T` lines follow. Each line contains an integer `N`.

 ### Constraints
 + 1 ≤ T ≤ 10^5
 + 1 ≤ N ≤ 10^10
 
### Output Format

 Display `IsFibo` if `N` is a Fibonacci number and `IsNotFibo` if it is not. The output for each test case should be displayed in a new line.


 ### Sample Input

 ```
 3
 5
 7
 8

 ```
 ### Sample Output

```
 IsFibo
 IsNotFibo
 IsFibo
```
 */


import Foundation

extension Double {
    var isPerfectSquare: Bool {
        return self.squareRoot().rounded() == self.squareRoot()
    }
}

// Complete the solve function below.

func solve(n: Int) -> String {
    
    //    N is a Fibonacci number if and only if (5*N^2 + 4) or (5*N^2 – 4) is a perfect square!
    let number = Double(n)
    
    if (5*number*number + 4).isPerfectSquare ||
        (5*number*number - 4).isPerfectSquare {
            return "IsFibo"
    }
    
    return "IsNotFibo"
    
}

let testCaseList = [3, 5, 7, 8, 8341170321, 2370416826, 49796557, 5937368629, 1397237810, 6067799625,
                    4946561131, 7571837992, 1599236396, 8426627685, 3111072649, 7938064811, 7047702685, 8183472175, 5113131111, 4660962706,
                    650547201,9253734625]

for number in testCaseList {
    print(solve(n: number))
}
