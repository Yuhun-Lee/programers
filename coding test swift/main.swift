import Foundation

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var a: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    let result:[Int]
    for i in 0..<a.count{
        for j in 0..<a.count{
            if i > j {
                a[i][j] = i+1
            }
            else {
                a[i][j] = j+1
            }
        }
    }
    
    let b = a.flatMap{$0}
    
    for i in left...right {
        result.append(b[Int(i)])
    }
    
    return result
}
