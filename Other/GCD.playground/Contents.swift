/*:
 # Greatest Common Divisor (GCD)
 
 ---
 GCD of two numbers is the largest number that divides both of them. A simple way to find GCD is to factorize both numbers and multiply common factors.
 
 ```
 36     = 2 x 2 x 3 x 3
 60     = 2 x 2 x 3 x 5
 
 GCD    = Multiplication of common factor
        = 2 x 2 x 3
        = 12
 ```

 The algorithm is based on below facts.
 
 + If we subtract smaller number from larger (we reduce larger number), GCD doesn’t change. So if we keep subtracting repeatedly the larger of two, we end up with GCD.
 + Now instead of subtraction, if we divide smaller number, the algorithm stops when we find remainder 0.

 */

import Foundation

/// Function to find gcd of 2 integer numbers
/// - Parameters:
///   - firstValue: integer value
///   - secondValue: integer value
func greatestCommonDivisor(first: Int, second: Int) -> Int {
    
    if first == 0 || second == 0 || first == second {
        return max(first, second)
    }
    
    return greatestCommonDivisor(first: second%first, second: first)
}


/// Function to find gcd of array of numbers
/// - Parameter arr: List of integer values

func findGCD(arr:[Int]) -> Int {
    precondition(arr.count > 0, "Array should have at least one value")
    
    var gcd = arr.first!
    
    for i in 1..<arr.count-1 {
        gcd = greatestCommonDivisor(first: arr[i], second: gcd)
    }
    
    return gcd
}

greatestCommonDivisor(first: 10, second: 15) // 5
greatestCommonDivisor(first: 35, second: 10) // 5
greatestCommonDivisor(first: 31, second: 2) // 1
greatestCommonDivisor(first: 31, second: 31) // 31
greatestCommonDivisor(first: 31, second: 0) // 31
greatestCommonDivisor(first: 0, second: 31) // 31



findGCD(arr: [2, 4, 6, 8, 16]) // 2
