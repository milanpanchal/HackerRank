/*:
 # Beyblade World Championship (100 Marks)

 ---
### Problem Statement
 
 Tyson is all prepared for the Beyblade World Championship. The tournament is team-based and each team can have N members. A player can fight against a single player only. Team G-Revolution is all excited and pumped up as they have practised a lot. Kenny, the mind of team G-Revolution, has created a database where he has the data about the power of other teams’ members and his own team members. The tournament is going to start in some time and Kenny moves to the cafeteria to have a snack before the competition.

 The team G-Revolution is to fight in some time and they are tensed up as someone has kidnapped Kenny from the cafeteria. They have made a police complaint and the police are searching for Kenny. Luckily, they have found his device with all the data. The problem is, the data is present randomly and not in the order they have to fight the opponent. Team G-Revolution wants to win at any cost and for that, they need the order in which they have to fight optimally to win the maximum number of battles.

 A player can win only when his/her beyblade power is strictly greater than the opponents beyblade power.

 Example:

 Consider the team size is 3, N = 3

 The 3 players of both the teams are shown with their beyblade powers.
 ```
 20 30 50 (Team G-Revolution)
 60 40 25
 ```

 Team G-Revolution is presented in the order: Tyson, Max, Ray

 Team All Starz is presented in the order: Michael, Eddy, Steve


 With the given arrangement, Team G-Revolution would be able to win only 1 fight. Team G-Revolution should be shuffled in an optimal manner as below:

 The maximum number of fights Team G-Revolution can win is 2 when they are arranged optimally or fight in an optimal order.
 ```
 20 50 30 (Team G-Revolution)
 60 40 25
 ```

 Team G-Revolution needs help with the device. Tyson has heard about your skills and called you up to help them shuffle their positions in an order such that they would be able to win the maximum number of fights. Can you help Tyson and Team G-Revolution?

 ### Input Format

 + The first line of input consists of the number of test cases, T
 + The first line of each test case consists of the number of members each team can have, N.
 + The second line of each test case consists of N space-separated integers representing the power of beyblades of Team G-Revolution members.
 + The third line of each test case consists of N space-separated integers representing the power of beyblades of opponent team members.


 ### Constraints
 + 1<= T <=100000
 + 1<= N <=100000
 + 0<= Power of Beyblade <= LLONG_MAX


 ### Output Format
 
 For each test case, print the maximum number of fights Team G-Revolution can win if they go to fight in an optimal manner.

 */

import Foundation

//let numOfTestCases  = Int(readLine()!)!
//let numOfTeams      = Int(readLine()!)!
//let teamGPower      = readLine()!.split(separator: " ").map({Int($0)!})
//let opponentPower   = readLine()!.split(separator: " ").map({Int($0)!})

func beybladeWorldChampionship(numOfTeams: Int, teamGPower: [Int], opponentPower: [Int]) -> Int {
    var maxFightsCanWin = 0
    let gTeam = teamGPower.sorted()
    var opponentTeam = opponentPower.sorted()
    
    for i in 0..<numOfTeams {
                var matchIndex = -1
        for j in 0..<opponentTeam.count {
            
            if gTeam[i] < opponentTeam.first! {
                print("Do fight between \(gTeam[i]) -> \(opponentTeam.last!)")
                break
            }
            
            if gTeam[i] > opponentTeam[j] {
                matchIndex = j
            } else {
                break
            }
            
        }
        if matchIndex == -1 {
            opponentTeam.removeLast()
        } else {
            print("Do fight between \(gTeam[i]) -> \(opponentTeam[matchIndex])")
            maxFightsCanWin += 1
            opponentTeam.remove(at: matchIndex)
        }
    }
    
    return maxFightsCanWin
}

print("Testcase 1")

beybladeWorldChampionship(numOfTeams: 3,
                          teamGPower: [20, 30, 50],
                          opponentPower: [25, 40, 60]) // 2

print("\nTestcase 2")
beybladeWorldChampionship(numOfTeams: 10,
                          teamGPower: [3, 6, 7, 5, 3, 5, 6, 2, 9, 1],
                          opponentPower: [2, 7, 0, 9, 3, 6, 0, 6, 2, 6]) // 7

print("Finished")
