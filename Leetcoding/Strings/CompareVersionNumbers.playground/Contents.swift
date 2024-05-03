

func compareVersion(_ version1: String, _ version2: String) -> Int {
    let str1 = version1.split(separator: ".")
    let str2 = version2.split(separator: ".")
    
    for i in 0 ..< max(str1.count, str2.count) {
        let v1 = i < str1.count ? Int(str1[i]) ?? 0 : 0
        let v2 = i < str2.count ? Int(str2[i]) ?? 0 : 0
        if v1 < v2 {
            return -1
        } else if v1 > v2 {
            return 1
        }
    }
    return 0
}

print(compareVersion("1.01", "1.001"))
print(compareVersion("1.0", "1.0.0"))
print(compareVersion("0.0", "1.1"))
