/*:
# Pangrams

[HackerRank Problem: Pangrams](https:www.hackerrank.com/challenges/pangrams/problem "HackerRank Problem: Pangrams")

---
*/

import Foundation

// Complete the pangrams function below.
func pangrams(s: String) -> String {
    

    if s.count < 26 {
        return "not pangram"
    }
    
    var sets:Set<String.Element> = Set(s.lowercased())
    sets.remove(" ")
    
    return sets.count < 26 ? "not pangram" : "pangram"
}

pangrams(s: "We promptly judged antique ivory buckles for the next prize") // pangram
pangrams(s: "We promptly judged antique ivory buckles for the prize") // not pangram

