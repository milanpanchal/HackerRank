import Foundation

// Complete the kangaroo function below.
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
// x1, v1: integers, starting position and jump distance for kangaroo 1
// x2, v2: integers, starting position and jump distance for kangaroo 2
    var k1 = x1
    var k2 = x2
    
    if (x1 < x2 && v1 < v2) {
        return "NO"
    }
    
    for _ in 0..<10000 {

        if (k1) == (k2) {
            return "YES"
        }
        
        k1 += v1
        k2 += v2
    }

    return "NO"
}

print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3))
