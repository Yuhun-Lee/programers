import Foundation

func solution(_ r1:Int, _ r2:Int) -> Int64 {
    let powR1 = r1*r1
    let powR2 = r2*r2
    var result: Int = 0
    
    for x in 1...r2 {
        let maxHeight = floor(sqrt(Double(powR2 - x*x)))
        let minHeight = ceil(sqrt(Double(max(powR1 - x*x, 0))))
        result += Int(maxHeight - minHeight + 1)
    }
    
    return Int64(result * 4)
}
