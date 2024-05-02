import UIKit

class TimeMap {

    typealias TimestampValuePair = (timestamp: Int , value: String)
    var timeMapDict: [String: [TimestampValuePair]] = [:]
    
    init() {
        self.timeMapDict = [String: [TimestampValuePair]]()
    }
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        timeMapDict[key, default: []].append((timestamp, value))
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        var tuples = timeMapDict[key] ?? []
        var i = tuples.count - 1
        while i >= 0 {
            if tuples[i].0 <= timestamp {
                return tuples[i].1
            }
            
            i -= 1
        }
        
        return ""
    }
    
}

let obj = TimeMap()
obj.set("foo", "bar", 1)
let ret_2: String = obj.get("foo", 1)
print(ret_2)
let ret_3: String = obj.get("foo", 3)
print(ret_3)
obj.set("foo", "bar2", 4)
let ret_4: String = obj.get("foo", 4)
print(ret_4)
let ret_5: String = obj.get("foo", 5)
print(ret_5)
