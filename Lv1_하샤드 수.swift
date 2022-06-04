func solution(_ x:Int) -> Bool {
    var value = x
    var check = 0
    while value != 0 {
        check += value % 10
        value = value / 10
    }

    return x%check == 0 ? true : false
}
