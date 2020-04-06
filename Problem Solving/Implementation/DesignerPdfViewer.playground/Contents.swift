/*:
 # Designer PDF Viewer

 [HackerRank Problem - Designer PDF Viewer](https:www.hackerrank.com/challenges/designer-pdf-viewer/problem "HackerRank Problem - Designer PDF Viewer")

 ---
 */

import Foundation

// Complete the designerPdfViewer function below.
func designerPdfViewer(h: [Int], word: String) -> Int {

    let alphabets = (97...122).map({Character(UnicodeScalar($0))})
    let alphabetMapping = Dictionary(uniqueKeysWithValues: zip(alphabets, h))

    var maxValue = 0
    for i in word {
        if let value = alphabetMapping[i], value > maxValue {
            maxValue = value
        }
    }

    return maxValue * word.count
}

designerPdfViewer(h: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], word: "abc") // 9

designerPdfViewer(h: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7], word: "zaba") // 28
