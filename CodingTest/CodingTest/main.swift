import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var width: Int = 1
    var paint: Int = 0
    
    var flag = false
    
    for i in 0..<section.count-1 {
        if flag {
            flag = false
            continue
        }
        
        width += section[i+1] - section[i]
        if width > m {
            paint += 1
            width = 1
        } else if width == m {
            paint += 1
            width = 1
            flag = true
            if i == section.count-2 {
                paint -= 1
            }
        }
    }
    
    paint += 1
    return paint
}
