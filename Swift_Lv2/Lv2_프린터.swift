import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var queue:[Int] = priorities
    var loc:Int = location
    var returnCount:Int = 1
    
    while true {
        var check:Bool = true
        for i in queue {
            // 우선순위가 높은게 있으면 뒤로
            if queue[0] < i {
                queue.append(queue[0])
                queue.removeFirst()
                check = false
                
                if loc-1 >= 0 {
                    loc -= 1
                } else {
                    loc = queue.count-1
                }
                break
            }
        }
        
        if check {
            if loc == 0 {
                return returnCount   
            }
            queue.removeFirst()
            returnCount += 1
            if loc-1 >= 0 {
                    loc -= 1
                } else {
                    loc = queue.count-1
                }
        }   
    }
    
    return 0
}
