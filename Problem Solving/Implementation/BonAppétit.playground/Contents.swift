/*:
# Bon Appétit

[HackerRank Problem - Bon Appétit](https:www.hackerrank.com/challenges/bon-appetit/problem "HackerRank Problem - Bon Appétit")

---
 */

import Foundation

// Complete the bonAppetit function below.
func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {

    let totalSum = bill.reduce(0, +)
    let annaActualcontribution = (totalSum - bill[k])/2
    if b == annaActualcontribution {
        print("Bon Appetit")
    } else {
        print(b-annaActualcontribution)
    }

}
