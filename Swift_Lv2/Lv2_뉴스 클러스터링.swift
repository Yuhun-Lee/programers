func solution(_ str1:String, _ str2:String) -> Int {
    let check = Array("abcdefghijklmnopqrstuvwxyz")
    var dic1:[String:Int] = [:]
    var dic2:[String:Int] = [:]
    
    var s1 = Array(str1.lowercased())
    var s2 = Array(str2.lowercased())
    
    for i in 0..<s1.count-1 {
        if check.contains(s1[i]) && check.contains(s1[i+1]) {
           if let temp = dic1[String(s1[i])+String(s1[i+1])] {
               dic1[String(s1[i])+String(s1[i+1])] = dic1[String(s1[i])+String(s1[i+1])]! + 1
           } else {
               dic1[String(s1[i])+String(s1[i+1])] = 1
           }
        }
    }
    
    for i in 0..<s2.count-1 {
        if check.contains(s2[i]) && check.contains(s2[i+1]) {
           if let temp = dic2[String(s2[i])+String(s2[i+1])] {
               dic2[String(s2[i])+String(s2[i+1])] = dic2[String(s2[i])+String(s2[i+1])]! + 1
           } else {
               dic2[String(s2[i])+String(s2[i+1])] = 1
           }
        }
    }
    
    var intersection:Int = 0
    var union:Int = 0
    var set1:Set<String> = []
    
    // union
    for i in dic1.keys {
        set1.insert(i)
    }
     
    for i in dic2.keys {
        set1.insert(i)
    }
    
    for i in set1 {
        if let v1 = dic1[i] , let v2 = dic2[i] {union += max(v1,v2)}
        else if let v1 = dic1[i] {union += v1}
        else if let v2 = dic2[i] {union += v2}
    }
    // intersection
    for (k1, v1) in dic1 {
        for (k2, v2) in dic2 {
            if k1 == k2 {intersection += min(v1, v2)}
        }
    }
    
    return (union == 0 && intersection == 0) ? 65536 : Int(Double(intersection)/Double(union)*65536)
}
