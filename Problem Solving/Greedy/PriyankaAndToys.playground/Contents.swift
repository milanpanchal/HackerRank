/*:
 # Priyanka and Toys
 [HackerRank Problem - Priyanka and Toys](https://www.hackerrank.com/challenges/priyanka-and-toys/problem "HackerRank Problem - Priyanka and Toys")

 ---
 
 ### Problem Statement
 Priyanka works for an international toy company that ships by container. Her task is to the determine the lowest cost way to combine her orders for shipping. She has a list of item weights. The shipping company has a requirement that all items loaded in a container must weigh less than or equal to 4 units plus the weight of the minimum weight item. All items meeting that requirement will be shipped in one container.
 
 What is the smallest number of containers that can be contracted to ship the items based on the given list of weights?

 For example, there are items with weights w = [1, 2, 3, 4, 5, 10, 11, 12, 13] . This can be broken into two containers: [1, 2, 3, 4, 5]  and [10, 11, 12, 13]. Each container will contain items weighing within 4 units of the minimum weight item.

 ### Function Description
 Complete the toys function in the editor below. It should return the minimum number of containers required to ship.

 toys has the following parameter(s):
 * w: an array of integers that represent the weights of each order to ship
 
 ### Input Format
 
 The first line contains an integer n, the number of orders to ship.
 The next line contains n space-separated integers, w[1], w[2],...,w[n], representing the orders in a weight array.
 
 ### Constraints
 1 ≤ n ≤ 10^5
 
 0 ≤ w[i] ≤ 10^4, where i ∈ [1,n]


 ### Output Format
 Return the integer value of the number of containers Priyanka must contract to ship all of the toys.
 
*/

import Foundation


// Complete the toys function below.
func toys(w: [Int]) -> Int {
    var totalContainers = 1
    
    let weights = w.sorted()
    var container = [Int]()

    for val in weights {
        
        
        if (container.count == 0) || (val <= container.first! + 4) {
            container.append(val)
        } else {
            container = []
            container.append(val)
            totalContainers += 1
        }
        
    }

    return totalContainers

}

toys(w: [1, 2, 3, 4, 5, 10, 11, 12, 13]) // 2
toys(w: [1, 2, 3, 21, 7, 12, 14, 21]) // 4
toys(w: [12, 15, 7, 8, 19, 24]) // 4
