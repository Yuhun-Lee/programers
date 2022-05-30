func solution(_ seoul:[String]) -> String {
    for (i,s) in seoul.enumerated() {
        if s == "Kim" {return "김서방은 \(i)에 있다"}
    }
    
    return ""
}
