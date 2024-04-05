
//The merge function is a critical part of the Merge Sort algorithm. It's responsible for merging two sorted arrays (subarrays) into a single sorted array. Let's break down how the merge function in the provided Swift code works:
//
//Parameters:
//leftPile: A sorted array (subarray) of elements.
//rightPile: Another sorted array (subarray) of elements.
//Steps in the Merge Function:
//Initialize Indexes: Two indexes, leftIndex and rightIndex, are initialized to 0. These indexes track the current position in the leftPile and rightPile, respectively.
//
//Initialize Ordered Array: An empty array, orderedArray, is created. This array will store the merged and sorted elements.
//
//Comparing and Merging: The function enters a loop where it compares elements from leftPile and rightPile using the current indexes.
//
//If leftPile[leftIndex] < rightPile[rightIndex], the element from leftPile is appended to orderedArray, and leftIndex is incremented.
//Otherwise, the element from rightPile is appended to orderedArray, and rightIndex is incremented.
//This process continues until one of the piles is exhausted (i.e., either leftIndex or rightIndex reaches the end of its respective array).
//Appending Remaining Elements:
//
//If there are remaining elements in leftPile (i.e., leftIndex has not reached the end of leftPile), these elements are appended to orderedArray. These elements are already sorted and larger than all previously merged elements.
//Similarly, if there are remaining elements in rightPile, these are appended to orderedArray.
//Return Result: The orderedArray, now containing all elements from leftPile and rightPile in a sorted manner, is returned.
//
//Example:
//Let's say leftPile is [3, 27] and rightPile is [9, 38].
//
//Initially, orderedArray is [], leftIndex and rightIndex are both 0.
//The first comparison is between 3 and 9. Since 3 < 9, 3 is appended to orderedArray, and leftIndex becomes 1.
//The next comparison is between 27 and 9. Since 9 < 27, 9 is appended to orderedArray, and rightIndex becomes 1.
//Now, leftPile has 27 left and rightPile is exhausted. So, 27 is appended to orderedArray.
//The final orderedArray is [3, 9, 27].
//Efficiency:
//The merge function is efficient because it only requires a single pass through each pile to merge them. The complexity of merging two piles of sizes n and m is O(n + m), which is linear with respect to the total number of elements.
//
//Understanding the merge function is key to understanding how Merge Sort efficiently combines smaller sorted arrays into larger ones, maintaining the sorted order throughout the process.
                
                
func mergeSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    //Divide
    let midIndex = array.count / 2
    
    //Conquer
    let leftArray = mergeSort(Array(array[..<midIndex]))
    let rightArray = mergeSort(Array(array[midIndex...]))
    
    //Sort and merge
    return merge(leftArray: leftArray, rightArray: rightArray)
}

//Merge
func merge<T: Comparable>(leftArray: [T], rightArray: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    var sortedArray: [T] = []
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            sortedArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else {
            sortedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftArray.count {
        sortedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightArray.count {
        sortedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return sortedArray
}

var arr = [2,4,3,1,6,9,8]
print(mergeSort(arr))

var arr2 = [2,4,3,1,6,9]
print(mergeSort(arr2))
