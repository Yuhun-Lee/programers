func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    var min:Int = arr[0]
    var checkIndex:Int = 0
    for (index, value) in arr.enumerated() {
        if min > value {min = value; checkIndex = index}
    }
    arr.remove(at: checkIndex)
    
    return arr.isEmpty ? [-1] : arr
}
