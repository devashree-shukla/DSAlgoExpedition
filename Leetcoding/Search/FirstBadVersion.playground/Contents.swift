
class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
            var (l, r) = (1, n)
               
               while l < r{
                   let mid = (l + r) / 2
                   isBadVersion(mid) ? (r = mid) : (l = mid + 1)
               }

               return r
    }
}
