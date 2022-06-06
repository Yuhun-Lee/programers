func solution(_ n:Int, _ m:Int) -> [Int] {
    var source:[Int] = []
    var result:[Int] = []
    var a = min(n,m)
    var b = max(m,n)
    var check:Bool = true
    
    while check {
        check = false
        for i in 1...b {
            if i == 1 {continue}
            if b%i == 0 && a%i == 0 {
                source.append(i)
                b = b / i
                a = a / i
                check = true
                break
            }
        }
    }
    
    result.append(source.isEmpty ? 1 : source.reduce(1, *))
    result.append(result[0]*a*b)
    
    return result
}
