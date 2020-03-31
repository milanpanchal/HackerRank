import Foundation

// Complete the cavityMap function below.
func cavityMap(grid: [String]) -> [String] {

    if grid.count <= 2 {
        return grid
    }
    
    var newGrid = [[String]](repeating: [], count: grid.count)
    for (index,val) in grid.enumerated() {
        for ch in val {
            newGrid[index].append(String(ch))
        }
    }
    
    for (rowIndex,val) in newGrid.enumerated() {
        
        for (columnIndex, number) in val.enumerated() {
            
            if rowIndex > 0 && rowIndex < val.count - 1 &&
                columnIndex > 0 && columnIndex < val.count - 1 {

                let previousNumber = newGrid[rowIndex][columnIndex-1]
                let nextNumber = newGrid[rowIndex][columnIndex+1]
                let upNumber = newGrid[rowIndex-1][columnIndex]
                let downNumber = newGrid[rowIndex+1][columnIndex]

                if number > previousNumber &&
                    number > nextNumber &&
                    number > upNumber &&
                    number > downNumber {
                    newGrid[rowIndex][columnIndex] = "X"
                }

                
            }
        }
        
    }
    
    return newGrid.map({$0.joined(separator: "")})
}

let inputs = [["12", "12"], ["1112", "1912","1892", "1234"]]

for ip in inputs {

    print("Input:")
    print(ip.joined(separator: "\n"))
    let response = cavityMap(grid: ip)
    print("\nOutput:")
    print(response.joined(separator: "\n"))
    print("---------")
}
