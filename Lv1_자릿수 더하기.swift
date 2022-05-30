import Foundation

func solution(_ n:Int) -> Int{
    let s: String = String(n)
    var result:Int = 0
    for i in s {
        result += Int(String(i))!
    }
    return result
}
