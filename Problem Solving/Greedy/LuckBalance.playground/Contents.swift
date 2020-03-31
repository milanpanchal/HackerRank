import Foundation

// Complete the luckBalance function below.
func luckBalance(k: Int, contests: [[Int]]) -> Int {
    var maxLuck = 0
    var importantContest = [Int]()
    var irrelevantContest = [Int]()
    for contest in contests {

        if contest.last == 1 {
            importantContest.append(contest.first!)
        } else {
            irrelevantContest.append(contest.first!)
        }

    }
    maxLuck += irrelevantContest.reduce(0,+)

    if k >= importantContest.count {
       maxLuck += importantContest.reduce(0,+)
    } else {
        let sorted = importantContest.sorted(by: >)

        maxLuck += sorted.prefix(k).reduce(0, +)
        maxLuck -= sorted.suffix(importantContest.count - k).reduce(0, +)

    }
    return maxLuck
}

let maxLuck = luckBalance(k: 3, contests: [[5, 1], [2, 1], [1, 1], [8, 1], [10, 0], [5, 0]])
print(maxLuck)
