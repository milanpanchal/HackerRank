/*:
# Strong Password

[HackerRank Problem: Strong Password](https:www.hackerrank.com/challenges/strong-password/problem "HackerRank Problem: Strong Password")

---
*/

import Foundation

// Complete the minimumNumber function below.
func minimumNumber(n: Int, password: String) -> Int {
    // Return the minimum number of characters to make the password strong

        if(n <= 3) {
            return 6 - n
        }

        var count = 0

        if password.rangeOfCharacter(from: .decimalDigits) == nil {
            count += 1
        }

        if password.rangeOfCharacter(from: .lowercaseLetters) == nil {
            count += 1
        }

        if password.rangeOfCharacter(from: .uppercaseLetters) == nil {
            count += 1
        }

        if password.rangeOfCharacter(from: CharacterSet(charactersIn:"!@#$%^&*()-+")) == nil {
            count += 1
        }

        return max(6-n,count)

}

minimumNumber(n: 3, password: "Ab1") // 3
minimumNumber(n: 11, password: "#HackerRank") // 1
