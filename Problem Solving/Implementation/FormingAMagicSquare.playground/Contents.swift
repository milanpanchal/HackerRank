/*:
 # Forming a Magic Square

 [HackerRank Problem: Forming a Magic Square](https:www.hackerrank.com/challenges/magic-square-forming/problem "HackerRank Problem: Forming a Magic Square")

 ---
### Problem Statement
 
 We define a magic square to be an `n x n` matrix of distinct positive integers from `1` to `n^2` where the sum of any row, column, or diagonal of length `n` is always equal to the same number: the magic constant.

 You will be given a `3 x 3` matrix `s` of integers in the inclusive range `[1, 9]`. We can convert any digit `a` to any other digit `b` in the range `[1, 9]` at cost of `|a - b|` . Given `s`, convert it into a magic square at minimal cost. Print this cost on a new line.

 Note: The resulting magic square must contain distinct integers in the inclusive range `[1, 9]`.

 For example, we start with the following matrix `s`:

 ```
 5 3 4
 1 5 8
 6 4 2
 ```
 
 We can convert it to the following magic square:

 ```
 8 3 4
 1 5 9
 6 7 2
 ```

 This took three replacements at a cost of `|5 - 8| + |8 - 9| + |4 - 7| = 7`.

 ### Function Description
 
 Complete the formingMagicSquare function in the editor below. It should return an integer that represents the minimal total cost of converting the input square to a magic square.

 formingMagicSquare has the following parameter(s):

 + s: a `3 x 3` array of integers


 ### Input Format

 Each of the lines contains three space-separated integers of row `s[i]`.

 ### Constraints
 + `s[i][j] ∈ [1, 9]`
 
### Output Format

 Print an integer denoting the minimum cost of turning matrix `s` into a magic square.

 ### Sample Input

 ```
 4 9 2
 3 5 7
 8 1 5
 ```

 ### Sample Output

 ```
 1
 ```
 */

import Foundation

// Complete the formingMagicSquare function below.
func formingMagicSquare(s: [[Int]]) -> Int {

//    let maxCost = 81
    var minCost = 81
    
    let appPossibleSquare = [ [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
                              [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
                              [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
                              [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
                              [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
                              [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
                              [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
                              [[2, 7, 6], [9, 5, 1], [4, 3, 8]]
                            ]
    
    for eachMagicSquare in appPossibleSquare {

        var cost = 0

        for (rowIndex, eachRowArray) in eachMagicSquare.enumerated() {
            
            for (columnIndex, eachValue) in eachRowArray.enumerated() {
                cost += abs(eachValue - s[rowIndex][columnIndex])
            }
        }
        minCost = min(cost, minCost)

    }
    return minCost

}

formingMagicSquare(s: [[4, 9, 2], [3, 5, 7], [8, 1, 5]]) // 1
formingMagicSquare(s: [[4, 8, 2], [4, 5, 7], [6, 1, 6]]) // 4
formingMagicSquare(s: [[5, 3, 4], [1, 5, 8], [6, 4, 2]]) // 7
