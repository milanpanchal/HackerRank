/*:
 # Maximum Area Serving Cake

 // https://leetcode.com/discuss/interview-question/348510/Google-or-OA-2019-or-Maximum-Area-Serving-Cake
 
 // https://leetcode.com/discuss/interview-question/388512/hackerrank-medium-question-can-you-help-me-solve-this
 ---
### Problem Statement
 
 Given an array containing the radii of circular cakes and the number of guests, determine the largest piece that can be cut from the cakes such that every guest gets a piece of the cake with the same area. It is not possible that a single piece has some part of one cake and some part of another cake and each guest is served only one piece of cake.

 ### Example 1

 Input: `radii = [1, 1, 1, 2, 2, 3]`,  `numberOfGuests = 6`.
 
 Output: `7.0686`
 
 Explanation:
 
 Reason being you can take the area of the cake with a radius of 3, and divide by 4. (Area  28.743 / 4  = 7.0686)
 
 Use a similary sized piece from the remaining cakes of radius 2 because total area of cakes with radius 2 are > 7.0686

 ### Example 2
 
 Input: `radii = [4, 3, 3], numberOfGuests = 3`
 
 Output: `28.2743`

*/

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

// TODO: Optimum Solution yet to implement
func maximumAreaServingCake(radii: [Int], numberOfGuests: Int) -> Double {

    assert(radii.count > 0, "There should be atleast one cake")
    assert(numberOfGuests > 0 , "There should be at lease one guest")
    
    
    let areas = radii.map({ return Double.pi * Double($0) * Double($0) })
    print(areas)

    if areas.count == 1 {
        return (areas.first! / Double(numberOfGuests))
    }
    
    var maxServeAreaList:[Double] = []
    
    for area in areas {
        for i in 1...numberOfGuests {
            
            let maxServeArea = (area / Double(i))
            var count = 0
            for value in areas {
                if value == area {
                    count += i
                } else {
                    count += Int(value / maxServeArea)
                }
            }
            
//            print("area \(area), maxServeArea: \(maxServeArea), count: \(count) ")
            
            if count >= numberOfGuests {
                maxServeAreaList.append(maxServeArea.rounded(toPlaces: 4))
                break
            }
            
            
        }
    }

    return maxServeAreaList.max() ?? 0.0
    
}

maximumAreaServingCake(radii: [1, 1, 1, 2, 2, 3], numberOfGuests: 6) // Output: 7.0686
maximumAreaServingCake(radii: [4, 3, 3], numberOfGuests: 3) // Output: 28.2743
maximumAreaServingCake(radii: [6, 7], numberOfGuests: 12) // Output: 21.9911
maximumAreaServingCake(radii: [1], numberOfGuests: 1) // Output: 3.1416

