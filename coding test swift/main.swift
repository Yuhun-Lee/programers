import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var minusCount = k
    var arr = Array(number)
    // var result:[Character] = []
    var sIndex:Int = 0
    
    while minusCount != 0 {
        var maxIndex:Int = 0
        var max:Character = "0"
        
        if arr.count-sIndex == minusCount {
            return String(arr)
        }
        
        for i in sIndex..<sIndex+minusCount+1 {
            if arr[i] == "9" {
                maxIndex = i
                break
            }
            else if arr[i] > max {
                max = arr[i]
                maxIndex = i
            }
        }
        
        for _ in sIndex..<maxIndex {
            arr.remove(at:sIndex)
            minusCount -= 1
        }
        sIndex += 1
        
        // result.append(arr[0])
        // arr.remove(at: 0)
    }
    
    // result.append(contentsOf: arr)
    return String(arr)
}

print(solution("1924", 2))
