/*:
 # Beautiful Days at the Movies

 [HackerRank Problem - Beautiful Days at the Movies](https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem "HackerRank Problem - Beautiful Days at the Movies")

 ---
### Problem Statement
 
 Lily likes to play games with integers. She has created a new game where she determines the difference between a number and its reverse. For instance, given the number `12`, its reverse is `21`. Their difference is `9`. The number `120` reversed is `21`, and their difference is `99`.
 
 She decides to apply her game to decision making. She will look at a numbered range of days and will only go to a movie on a beautiful day.

 Given a range of numbered days, `[i...j]` and a number `k`, determine the number of days in the range that are beautiful. Beautiful numbers are defined as numbers where `|i-reverse(i)|` is evenly divisible by `k`. If a day's value is a beautiful number, it is a beautiful day. Print the number of beautiful days in the range.



 ### Function Description

 Complete the beautifulDays function in the editor below. It must return the number of beautiful days in the range.

 beautifulDays has the following parameter(s):

 + i: the starting day number
 + j: the ending day number
 + k: the divisor

 ### Input Format

 A single line of three space-separated integers describing the respective values of `i`, `j`, and `k`.


 ### Constraints
 1 ≤ i ≤ j ≤ 2 x 10^6\
 1 ≤ k ≤ 2 x 10^9
 
### Output Format

 Print the number of beautiful days in the inclusive range between `i` and `j`.



 ### Sample Input

 ```
 20 23 6

 ```
 ### Sample Output
```
 2
```
 
 */

import Foundation

// Complete the beautifulDays function below.
/*func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var totalBeautifulDays = 0
    for day in i...j {
        if let reverseNumber = Int(String(String(day).reversed())) {
            if (abs(day-reverseNumber) % k == 0) {
                totalBeautifulDays += 1
            }
        }
    }

    return totalBeautifulDays
}*/

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var totalBeautifulDays = 0
    for day in i...j {

        var num = day
        var reverseNumber = 0;
        while (num > 0) {
            reverseNumber = reverseNumber*10 + num%10;
            num = num/10;
        }

        if (abs(day-reverseNumber) % k == 0) {
            totalBeautifulDays += 1
        }
    
    }

    return totalBeautifulDays
}

beautifulDays(i: 20, j: 23, k: 6) // 2
beautifulDays(i: 13, j: 45, k: 3) // 33
beautifulDays(i: 1, j: 2000000, k: 23047885) // 2998
