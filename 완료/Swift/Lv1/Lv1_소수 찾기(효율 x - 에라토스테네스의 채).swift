import Foundation

func solution(_ n:Int) -> Int {
    var result:[Int] = []
    var arr:[Int] = Array(2...n)
    var check:Bool = true

    while arr.count != 0 {
        result.append(arr[0])
        arr = arr.filter{ $0%arr[0] != 0}
    }
    
    return result.count
}
