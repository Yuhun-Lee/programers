func solution(_ s:String) -> String {
    var result:String = ""
    var check = 1
    
    for i in s {
        if i == " " {
            result += " "
            check = 1
            continue
        }
        (check % 2 == 1) ? (result += String(i).uppercased()) : (result += String(i).lowercased())
        check += 1
    }
    return result
}
