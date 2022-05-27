import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sortedD = d.sorted()
    var bg = budget
    var result = 0
    for i in sortedD {
        if(bg >= i){
            bg -= i
            result += 1
        }
        else {
            break
        }
    }
    
    return result
}
