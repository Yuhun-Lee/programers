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
        result = result + dic[key]!
    }
    
    return result
}

print(solution(["sun", "bed", "car"], 1))
