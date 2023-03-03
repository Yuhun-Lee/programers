func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64((a < b ? a...b : b...a).reduce(0,+))
}
