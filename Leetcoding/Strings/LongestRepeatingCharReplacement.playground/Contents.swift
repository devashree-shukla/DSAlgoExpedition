import UIKit

func characterReplacement(_ s: String, _ k: Int) -> Int {
    var dict: [Character: Int] = [:]
    var longestString = 0
    for char in s {
        dict[char, default: 0] += 1
    }
    
    if dict.values.map({ $0 == k }).reduce(true, { $0 && $1 }) {
        longestString = s.count
    } else {
        
        dict.sorted { $0.value > $1.value }
        print(dict)
        var changedString = ""
        
        for item in dict  {
            print(item.key)
            var arr = Array(s)
            var times = k
            print(arr)
            while times > 0 {
                for (index, letter) in arr.enumerated() {
                    if letter != item.key, times > 0 {
                        arr[index] =  item.key
                        times -= 1
                    }
                }
                
            }
            print(arr)
        }
        print()
    }
    
    return longestString
}

print(characterReplacement2("ABBA", 2))
print(characterReplacement2("ABABA", 2))
print(characterReplacement2("AABABBA", 1))

func characterReplacement2(_ s: String, _ k: Int) -> Int {
        var windowStart = 0, mx = 0, maxChar = 0
        var inputString = Array(s)
        var dict = [Character: Int]()
        
        for windowEnd in 0..<inputString.count{
            dict[inputString[windowEnd], default: 0 ] += 1
            maxChar = max(maxChar, dict[inputString[windowEnd], default: 0])
            let replaceCharCount = (windowEnd - windowStart + 1) - maxChar
            if replaceCharCount <= k{
                mx = max(mx, windowEnd - windowStart + 1 )
            } else {
                while( ((windowEnd - windowStart + 1) - maxChar) > k){
                    dict[inputString[windowStart], default: 0 ] -= 1
                    windowStart += 1
                }
            }
    
        }
        return mx
    }
