import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: [Int] = []
    var iCount = 0;
    var jCount = 0;
    
    for i in numbers {
        for j in numbers {
            if jCount == iCount {
                continue
            }
            if !result.contains(i+j){
                result.append(i+j)    
            }
          jCount += 1
        }
        iCount += 1
        jCount = 0;
    }
    
    return result.sorted()
}
