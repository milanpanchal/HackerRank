/*:
 # Sum of Digits
 ---

 Given a number N, calculate the sum of all the digits in 1 to N
 
 For Example:
 
 ```
 N = 5
 Sum Of Digits  = 1 + 2 + 3 + 4 + 5
                = 15
 ```
 

 ```
 N = 12
 Sum Of Digits  = 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + '10' + '11' + '12'
                = 45 + '10' + '11' + '12'
                = 45 + (1+0) + (1+1) + (1+2)
                = 45 + 1 + 2 + 3
                = 51
 ```
 
 Can you see the difference? We’re looking for the sum of digits, not sum of numbers. When we get past nine, the sum of digits for ‘10’ is just ‘1’. The answer for N = 12 should be 51, not 78.

 */

import Foundation

// METHOD 1
func sumOfDigits(for number: Int) -> Int {
    
    var sum = 0
    var num = number
    while num != 0 {
        sum += num%10
        num /= 10
    }
    return sum
}

func sumOfDigits(upto number: Int) -> Int {
    
    var sum = 0
    for eachNumber in 1...number {
       sum += sumOfDigits(for: eachNumber)
    }
    
    return sum
}

// METHOD 2
/// Reference: Detail for the equation http://datagenetics.com/blog/march42020/index.html

func sumOfDigitsOptimized(upto number: Int) -> Int {

    if number < 10 {
        return number * (number + 1) / 2
    }
    
    let d:Int = Int(log10(Double(number))) // number of digits less one
    let p:Int = Int(pow(10, Double(d)))
    let msd = number/p // most significant digit
    
    /// Sum((10^d)- 1) = (Sum( (10^(d-1)) - 1 ) × 10) + (45 × (10^(d-1)) - 1 )) = 45 × (10^(d-1)) × d
    let sumODigitsMinusOne = 45 * d * Int(pow(10, Double(d-1)))
    
    return (msd * sumODigitsMinusOne) + (msd * (msd-1)/2 * p) + (msd * (1 + number%p)) + sumOfDigitsOptimized(upto: number%p)

}

sumOfDigits(upto: 9) // 45
sumOfDigits(upto: 12) // 51
sumOfDigits(upto: 99) // 900
sumOfDigits(upto: 678) // 7998

sumOfDigitsOptimized(upto: 9) // 45
sumOfDigitsOptimized(upto: 12) // 51
sumOfDigitsOptimized(upto: 99) // 900
sumOfDigitsOptimized(upto: 678) // 7998
