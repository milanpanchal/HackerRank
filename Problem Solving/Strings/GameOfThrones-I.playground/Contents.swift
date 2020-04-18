/*:
 # Game of Thrones - I

 [HackerRank Problem: Game of Thrones - I](https:www.hackerrank.com/challenges/game-of-thrones/problem "HackerRank Problem: Game of Thrones - I")

 ---
### Problem Statement
 
 Dothraki are planning an attack to usurp King Robert's throne. King Robert learns of this conspiracy from Raven and plans to lock the single door through which the enemy can enter his kingdom.
 
 But, to lock the door he needs a key that is an anagram of a palindrome. He starts to go through his box of strings, checking to see if they can be rearranged into a palindrome.

 For example, given the string `s = [aabbccdd]`, one way it can be arranged into a palindrome is `abcddcba`.

 ### Function Description
 
 Complete the gameOfThrones function below to determine whether a given string can be rearranged into a palindrome. If it is possible, return YES, otherwise return NO.

 gameOfThrones has the following parameter(s):

 + s: a string to analyze


 ### Input Format

 A single line which contains `s`, the input string.

 ### Constraints
 + 1 ≤ | s | ≤ 10^5
 + `s` contains only lowercase letters in the range `ascii[a...z]`
 
### Output Format

 A single line which contains YES or NO.

 ### Sample Input

 ```
 aabbccdd
 aaabbbb
 cdefghmnopqrstuvw
 cdcdcdcdeeeef

 ```
 ### Sample Output

```
 YES
 YES
 NO
 YES
```
 */


import Foundation

// Complete the gameOfThrones function below.
func gameOfThrones(s: String) -> String {
    
    var list = [String.Element]()
    
    for char in s {
        if list.contains(char) {
            list.removeAll { $0 == char }
        } else {
            list.append(char)
        }
    }
    
    return s.count % 2 == list.count ? "YES" : "NO"
}

// TestCases
gameOfThrones(s: "a") // YES
gameOfThrones(s: "aabbccdd") // YES
gameOfThrones(s: "aaabbbb") // YES
gameOfThrones(s: "cdefghmnopqrstuvw") // NO
gameOfThrones(s: "cdcdcdcdeeeef") // YES
