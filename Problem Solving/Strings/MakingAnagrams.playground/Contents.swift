/*:
# Making Anagrams

[HackerRank Problem: Making Anagrams](https:www.hackerrank.com/challenges/making-anagrams/problem "HackerRank Problem: Making Anagrams")

---
*/

import Foundation

// Complete the makingAnagrams function below.
func makingAnagrams(s1: String, s2: String) -> Int {
    var count = 0
    var secondString = s2

    for s in s1 {
        for c in secondString {
            if s == c {
                count += 1
                if let index = secondString.firstIndex(of: c) {
                    secondString.remove(at: index)
                }
                break
            }
        }
    }

    return s1.count + s2.count - (2 * count)
}

makingAnagrams(s1: "cde", s2: "abc") // 4
makingAnagrams(s1: "absdjkvuahdakejfnfauhdsaavasdlkj",
               s2: "djfladfhiawasdkjvalskufhafablsdkashlahdfa") // 19
