import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    if x == y { return 0 }
    var count: Int = 1
    var totalSet: Set<Int> = []
    var set: Set<Int> = []
    
    func step(_ current: Int) -> Bool {
        let check = Set([ current + n, current * 2, current * 3 ])
        
        for num in check {
            if num == y {
                return false
            } else if num < y {
                if !totalSet.contains(num){
                    set.insert(num)
                    totalSet.insert(num)
                }
            }
        }
        return true
    }
    
    while step(x) {
        let tempSet = set
        set.removeAll()
        count += 1
        
        for s in tempSet {
            if !step(s) { return count }
        }
        
        if set.isEmpty { return -1 }
    }
    
    return count
}
