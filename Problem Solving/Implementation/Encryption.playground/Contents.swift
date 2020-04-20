/*:
 # Encryption

 [HackerRank Problem: Encryption](https://www.hackerrank.com/challenges/encryption/copy-from/137361513 "HackerRank Problem: Encryption")

 ---
 */

import Foundation

// Complete the encryption function below.
func encryption(s: String) -> String {

    let strWithoutSpace = s.replacingOccurrences(of: " ", with: "")
    let sqrtOfStringLenght = Double(strWithoutSpace.count).squareRoot()

    var rows = Int(floor(sqrtOfStringLenght))
    let columns = Int(ceil(sqrtOfStringLenght))

    if rows * columns  < strWithoutSpace.count {
        rows += 1
    }

    let letters = strWithoutSpace.map {String($0)}

    var finalArray = Array(repeating: "", count: columns)

    for (index, c) in letters.enumerated() {
        finalArray[index%columns] = finalArray[index%columns] + c
    }
    
    return finalArray.joined(separator: " ")

}

encryption(s: "haveaniceday") // hae and via ecy
encryption(s: "feedthedog") // fto ehg ee dd
encryption(s: "chillout") // clu hlt io


