import Foundation

// Complete the howManyGames function below.
func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
    // Return the number of games you can buy

    var price = p
    var count = 0
    var money = s
    while money >= price {
        
        count += 1
        money -= price
        price = max(price - d, m)
    }
    
    return count
}
print(howManyGames(p: 20, d: 3, m: 6, s: 80))
print(howManyGames(p: 20, d: 3, m: 6, s: 85))
print(howManyGames(p: 100, d: 1, m: 1, s: 99))
print(howManyGames(p: 100, d: 19, m: 1, s: 180))
