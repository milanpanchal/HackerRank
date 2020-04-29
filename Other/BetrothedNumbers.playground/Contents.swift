/*:
 # Betrothed Numbers
 ---

 Betrothed numbers are two positive numbers such that the sum of the proper divisors of either number is one more than (or one plus) the value of the other number.
 
 For example, 48 and 75 are betrothed numbers.
 
 + For number 48, sum of divisior is 76
 + For number 75, sum of divisior is 49
 
 */

import Foundation


/// Return sum of divisior for positive numnber
/// - Parameter number: Integer number greater than zero
func sumOfDivisior(number: Int) -> Int {
    precondition(number > 0, "Number should be greater than zero")
    
    if number < 4 {
        return 1
    }
    
    var sum = 1
    for i in 2...Int(sqrt(Double(number))) {
//        if i*i > number { break }
        
        if number%i == 0 {
            sum += i

            if number != i * i { //we do not want to include a divisor twice
                sum += (number/i)
            }
        }
    }
    return sum
}


/// Check if given two numbers are betrothed numbers of not
/// - Parameters:
///   - num1: First integer number greater than zero
///   - num2: Second integer number greater than zero
func iSBetrothedNumbers(num1: Int, num2: Int) -> Bool {
    if (sumOfDivisior(number: num1) == num2 + 1) &&
        (sumOfDivisior(number: num2) == num1 + 1) {
        return true
    }
    return false
}

/// Print all the betrothed numbers in the given range
/// - Parameter number: Range of the integer number greater than zero
func printAllBetrothedNumbers(inRange number: Int) {

    var pairs:[(Int, Int)] = []
    for i in 1...number {
        let sum1 = sumOfDivisior(number: i)
        if sum1 > i {
            let sum2 = sumOfDivisior(number: sum1 - 1)
            if sum2 == i + 1 {
                pairs.append((i, sum1 - 1))
            }
        }
    }
    
    print(pairs)
}

printAllBetrothedNumbers(inRange: 100)

