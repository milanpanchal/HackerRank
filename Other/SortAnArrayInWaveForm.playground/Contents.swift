import UIKit

func sortAnArrayInWaveForm(inputArray: [Int]) -> [Int] {
    
    var sortedArray = inputArray.sorted()
    
    for index in stride(from: 1, to: sortedArray.count, by: 2) {
        sortedArray.swapAt(index, index-1)
    }
    
    return sortedArray
}

func sortAnArrayInWaveFormWithOutSort(inputArray: [Int]) -> [Int] {
    
    var array = inputArray

    for index in stride(from: 0, to: inputArray.count, by: 2) {
        
        // If current even element is smaller than previous
        if index > 0 && array[index-1] > array[index] {
            array.swapAt(index-1, index)
        }
        
        // If current even element is smaller than next
        if (index < array.count - 1) && (array[index+1] > array[index]) {
            array.swapAt(index, index+1)
        }

    }
    
    return array
}

print(sortAnArrayInWaveForm(inputArray: [10, 5, 6, 3, 2, 20, 100, 80]))
print(sortAnArrayInWaveForm(inputArray: [20, 10, 8, 6, 4, 2]))
print(sortAnArrayInWaveForm(inputArray: [3, 6, 5, 10, 7, 20]))

print(sortAnArrayInWaveFormWithOutSort(inputArray: [10, 90, 49, 2, 1, 5, 23]))
