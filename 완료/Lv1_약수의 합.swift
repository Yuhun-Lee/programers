func solution(_ n:Int) -> Int {
    return (0...n).filter{ ($0 != 0) && (n%$0 == 0) }.reduce(0, {$0+$1})
}
