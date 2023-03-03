func solution(_ phone_number:String) -> String {
    var arr = Array(phone_number)
    for i in 0..<arr.count-4 {
        arr[i] = "*"
    }
    return String(arr)
}
