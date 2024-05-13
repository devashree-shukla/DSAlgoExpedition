
class MedianFinder {

    var nums = [Int]()
        
    func addNum(_ num: Int) {
        var l = 0, r = nums.count - 1
        
        while l <= r {
            let m = l + (r - l) / 2
            
            if nums[m] < num {
                l = m + 1
            } else {
                r = m - 1
            }
        }
        nums.insert(num, at: l)
    }
    
    func findMedian() -> Double {
        let n = nums.count, m = n / 2
        let med = Double(nums[m])
        
        return n % 2 == 0 ? (med + Double(nums[m - 1])) / 2 : med
    }
    
}
