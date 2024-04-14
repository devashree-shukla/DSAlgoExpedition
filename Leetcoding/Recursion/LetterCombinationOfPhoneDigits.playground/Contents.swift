import UIKit

let digitsToLetters = [
    "2": ["a", "b", "c"],
    "3": ["d", "e", "f"],
    "4":["g","h","i"],
   "5":["j","k","l"],
   "6":["m","n","o"],
   "7":["p","q","r","s"],
   "8":["t","u","v"],
   "9":["w","x","y","z"]]

func letterCombinations(_ digits: String) -> [String] {
    
    if digits.count < 2 {
        return digitsToLetters[digits] ?? []
    }
    
    var first: [String] = []
    var appendent: [String] = []
    for item in digits.map ({ String($0) }) {
        if first.isEmpty {
            first = digitsToLetters[item] ?? []
        }
        appendent = digitsToLetters[String(item)] ?? []
    }
    var ans: [String] = []
    for no1 in first {
        for no2 in appendent {
            ans.append("\(no1)\(no2)")
        }
    }

    return ans
}

//let digits = "2"
//print(letterCombinations(digits))
//
//print(letterCombinations("3"))

print(letterCombinations("234"))

//let wizards2 = ["a", "b", "c"]
//let animals2 = ["d", "e", "f"]
//for wiz in wizards2 {
//    for animal in animals2 {
//        print("\(wiz) \(animal)")
//    }
//}
