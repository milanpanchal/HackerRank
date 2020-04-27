/*:
 # CamelCase

 [HackerRank Problem: CamelCase](https:www.hackerrank.com/challenges/camelcase/problem "HackerRank Problem: CamelCase")

 ---
 */

import Foundation

// Complete the camelcase function below.
func camelcase(s: String) -> Int {

    var count = 1
    
    for c in s {
        if c.isUppercase {
            count += 1
        }
    }
    return count
    
}

func camelcaseRevised(s: String) -> Int {
    return s.map ({ return $0.isUppercase ? 1 : 0 }).reduce(1, +)
}

camelcase(s: "saveChangesInTheEditor") // 5

camelcaseRevised(s: "saveChangesInTheEditor") // 5

