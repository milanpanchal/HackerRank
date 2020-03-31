import UIKit

func happyLadybugs(b: String) -> String {

    if b.rangeOfCharacter(from: CharacterSet.letters) == nil {
        return "YES"
    }

    var array = b.map({$0})
    array.removeAll(where: {$0 == "_"})
    let mode = array.reduce([String.Element: Int]()) {
        var counts = $0
        counts[$1] = ($0[$1] ?? 0) + 1
        return counts
    }.max { ($0.1 > $1.1)}?.1 ?? 0

    if b.rangeOfCharacter(from: CharacterSet(charactersIn: "_")) == nil {

        let setArray = Set(array)
        var newArray = [String.Element]()
        
        for e in array {
            if newArray.count == 0 || newArray.last! != e {
                newArray.append(e)
            }
        }

        return mode > 1 && setArray.count == newArray.count ? "YES" : "NO"

    }

    return mode > 1 ? "YES" : "NO"
}

let array = ["G", "GR", "_GR_", "_R_G_", "R_R_R", "RRGGBBXX", "RRGGBBXY"]
for i in array {
    print(happyLadybugs(b: i))
}
