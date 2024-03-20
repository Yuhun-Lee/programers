import Foundation

func solution(_ targets:[[Int]]) -> Int {
    var count: Int = 0
    
    let orderedTargets: [[Int]] = targets.sorted {
        return $0.first! < $1.first!
    }
    
    var recentShot: Double = -1.0
    
    orderedTargets.forEach {
        if recentShot > Double($0[0]) && recentShot > Double($0[1]) {
            recentShot = Double($0[1]) - 0.1
            return
        }
        if recentShot < Double($0[0]) {
            count += 1
            recentShot = Double($0[1]) - 0.1
        }
    }
    
    return count
}

print(solution([[4,5],[4,8],[10,14],[11,13],[5,12],[3,7],[1,4]]))
