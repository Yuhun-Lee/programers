func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var arr:[Int] = arr.filter{$0%divisor == 0}.sorted()
    if arr.isEmpty {arr.append(-1)}   
    return arr
}
