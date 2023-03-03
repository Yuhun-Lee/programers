// 테스트테이스 10번 효율성 실패...
import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var minusCount = k
    var arr = Array(number)
    var result:[Character] = []

    while minusCount != 0 {
        var maxIndex:Int = 0
        var max:Character = "0"

        if arr.count == minusCount {
            return String(result)
        }

        for i in 0..<minusCount+1 {
            if arr[i] == "9" {
                maxIndex = i
                break
            }
            else if arr[i] > max {
                max = arr[i]
                maxIndex = i
            }
        }

        for _ in 0..<maxIndex {
            arr.remove(at:0)
        }
        minusCount -= maxIndex

        result.append(arr[0])
        arr.remove(at: 0)
    }

    result.append(contentsOf: arr)
    return String(result)
}
