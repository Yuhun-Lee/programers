import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {

    var leftInt: Int = Int(left)
    var rightInt: Int = Int(right)
    var result: [Int] = []

    for i in leftInt...rightInt {
        var c: Int = i / n
        var r: Int = i % n
        if c > r {
            result.append(c+1)
        }
        else {
            result.append(r+1)
        }
    }
    return result
}
