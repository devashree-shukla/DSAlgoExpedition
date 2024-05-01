import UIKit

func compress(_ chars: inout [Character]) -> Int {
    var currentChar = chars[0]
            var count = 0
            var compressedString = ""
            for char in chars {
                if char == currentChar {
                    count += 1
                } else {
                    compressedString.append(currentChar)
                    if count > 1 {
                        compressedString.append("\(count)")
                    }
                    count = 1
                    currentChar = char
                }
            }
            compressedString.append(currentChar)
            if count > 1 {
                compressedString.append("\(count)")
            }
            var index = 0
            for str in compressedString {
                chars[index] = str
                index += 1
            }
        return compressedString.count
}

var arr = ["a","a","b","b","c","c","c"]  as [Character]
compress(&arr)

var arr2 = ["a"]  as [Character]
compress(&arr2)
