/*:
 # 100 Doors Puzzle

 ---
### Problem Statement
 
 You have 100 doors in a row that are all initially closed. You make 100 passes by the doors starting with the first door every time. The first time through you visit every door and toggle the door (if the door is closed, you open it, if it’s open, you close it). The second time you only visit every 2nd door (door #2, #4, #6). The third time, every 3rd door (door #3, #6, #9), etc, until you only visit the 100th door.

 What state are the doors in after the last pass? Which are open which are closed?

 ### Puzzle Solution:

 You can figure out that for any given door, say door #38, you will visit it for every divisor it has.
 38 has the divisors 1 & 38, 2 & 19. So on pass 1 will open the door, pass 2 will close it, pass 19 open, pass 38 close.
 
 For every pair of divisors the door will just end up back in its initial state. So you might think that every door will end up closed?
 
 Well what about door #9. 9 has the divisors 1 & 9, 3 & 3. But 3 is repeated because 9 is a perfect square, so you will only visit door #9, on pass 1, 3, and 9.
 Leaving it open at the end. Only perfect square doors will be open at the end.

 */

import Foundation

func doorStatePuzzle(for totalDoors: Int) -> [Int] {

    var doorState = [Int](repeating: 0, count: totalDoors)

    var steps = 1

    while steps <= totalDoors {

        for i in stride(from: steps, through: totalDoors, by: steps) {
            doorState[i-1] ^= 1
        }
        steps += 1
    }

    return doorState
}

print(doorStatePuzzle(for: 100))
