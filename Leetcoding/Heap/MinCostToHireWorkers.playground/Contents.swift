func mincostToHireWorkers(_ quality: [Int], _ wage: [Int], _ k: Int) -> Double {
        let n = quality.count
        var workers = Array(0..<n).map { i -> (ratio: Double, q: Int, w: Int) in
            (Double(wage[i]) / Double(quality[i]), quality[i], wage[i])
        }
        workers.sort { $0.ratio < $1.ratio }

        var currentQualitySum = 0
        var maxHeap = [Int]()
        var result = Double.greatestFiniteMagnitude

        for worker in workers {
            currentQualitySum += worker.q
            maxHeap.append(worker.q)
            maxHeap.sort(by: >)

            if maxHeap.count > k {
                currentQualitySum -= maxHeap.first!
                maxHeap.removeFirst()
            }

            if maxHeap.count == k {
                result = min(result, worker.ratio * Double(currentQualitySum))
            }
        }

        return result
    }
