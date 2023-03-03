import Foundation

func solution(_ n:Int) -> Int {
    var three: [Int] = []
    var num = n;
    
    while num > 2  {
        let a = num / 3
        let b = num % 3
        num = a
        three.append(b)
    }
    
    three.append(num)
    var result: Int = 0
    var lenThree:Int = three.count - 1
    var index:Int = 0;
    
    while lenThree >= 0 {
        result += three[index]*Int(pow(3.0,Double(lenThree)))
        lenThree -= 1
        index += 1
    }
    
    return result
}
