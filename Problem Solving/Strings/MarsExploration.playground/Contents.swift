/*:
# Mars Exploration

[HackerRank Problem: Mars Exploration](https:www.hackerrank.com/challenges/mars-exploration/problem "HackerRank Problem: Mars Exploration")

---
*/

import Foundation

// Complete the marsExploration function below.
func marsExploration(s: String) -> Int {
    let sosString = "SOS"
    var count = 0
    var i = 0
    for c in s {

        let index = sosString.index (sosString.startIndex, offsetBy: i%3)
        if c != sosString[index] {
            count += 1
        }
        i += 1
    }
    return count
}

marsExploration(s: "SOSSPSSQSSOR") // 3
marsExploration(s: "SOSSOT") // 1
