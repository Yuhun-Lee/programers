func solution(_ num:Int) -> Int {
    var num = num
    var count: Int = 0;
    while count < 500 {
        guard num != 1 else {return count}
        (num%2 == 0) ? (num = num / 2) : (num = num*3 + 1)
        count += 1
    }
    
    return -1
}
