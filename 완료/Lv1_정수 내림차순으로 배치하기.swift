func solution(_ n:Int64) -> Int64 {
    var k:Int = Int(n)
    var result:[Int] = []
    
    while k != 0 {
        result.append(k % 10)
         k = k/10
    }
    
    return Int64(result.sorted(by: >).map{String($0)}.joined())!
}
