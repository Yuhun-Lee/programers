func solution(_ s:String) -> String {
    
    if s.count % 2 == 0 {
        return String(s[s.index(s.startIndex, offsetBy: s.count/2)])
    }
    else {
        return String(s[s.index(s.startIndex, offsetBy: s.count/2 - 1)]) + String(s[s.index(s.startIndex, offsetBy: s.count/2)])
    }
    
    return ""
}
