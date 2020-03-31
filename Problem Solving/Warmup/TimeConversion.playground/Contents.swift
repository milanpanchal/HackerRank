import Foundation

/*
 * Complete the timeConversion function below.
 */
func timeConversion(s: String) -> String {
    /*
     * Write your code here.
     */

    let formatter = DateFormatter()
    formatter.dateFormat = "hh:mm:ssa"
    
    if let date = formatter.date(from: s) {
        formatter.dateFormat = "HH:mm:ss"
        return formatter.string(from: date)
    }

    return s
}

print(timeConversion(s: "07:05:45PM"))
