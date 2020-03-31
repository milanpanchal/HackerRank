import Foundation

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

func gradingStudents(grades: [Int]) -> [Int] {
    // Write your code here
    var updatedGrades = [Int]()
    let divisor = 5

    for grade in grades {
        let rem = (grade % divisor)
        if grade >= 38 && rem > 2 {
            updatedGrades.append(grade + divisor - rem)
        } else {
            updatedGrades.append(grade)
        }
    }

    return updatedGrades
}

print(gradingStudents(grades: [73, 67, 38, 33]))
