func solution(_ strings:[String], _ n:Int) -> [String] {
    var result:[String] = []
    var dic:[String:[String]] = [:]
    
    for str in strings {
        let check:String = String(str[str.index(str.startIndex,offsetBy:n)])
        if let temp = dic[check] {
            dic[check] = (temp + [str]).sorted()
        }
        else {
            dic[check] = [str]
        }
    }
    
    for key in dic.keys.sorted() {
        guard let t = dic[key] as? [String] else {continue}
        result = result + t
    }
    
    return result
}

// 다른 사람의 풀이(진짜 대박이다.)

//func solution(_ strings:[String], _ n:Int) -> [String] {
//    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
//}
