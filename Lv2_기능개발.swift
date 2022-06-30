import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var completeDate:[Int] = progresses.map{100-$0}
    var result:[Int] = [] 
    
    for i in 0..<completeDate.count {
        completeDate[i] = completeDate[i]%speeds[i] == 0 ? (completeDate[i]/speeds[i]) : (completeDate[i]/speeds[i] + 1)
    }
    
    print(completeDate)
    
    var temp:Int = 0
    var check:Int = completeDate.first! // 기준
    while completeDate.count != 0 {
        if check >= completeDate.first! {
            temp += 1
            completeDate.removeFirst()
        } else {
            result.append(temp)
            temp = 0
            check = completeDate.first!
        }
    }
    result.append(temp)
    return result
}
