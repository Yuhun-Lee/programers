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
