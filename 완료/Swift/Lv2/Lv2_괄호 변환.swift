import Foundation

func solution(_ p:String) -> String {
    
    if p == "" {return ""}
    
    var u:String = ""
    var v:String = ""
    var check:Int = 0
    
    var isU:Bool = true
    
    for i in p {
        if isU { u.append(i) }
        else { v.append(i) }
        
        i == "(" ? (check += 1) : (check -= 1)
        if check == 0 {isU = false}
    }
    if isCollectString(u) {
        return u + solution(v)
        
    } else {
        return "(" + solution(v) + ")" + trimAndReverse(u)
    }
}

func isCollectString(_ str:String) -> Bool {
    var check:Int = 0
    for i in str {
        i == "(" ? (check += 1) : (check -= 1)
        if check == -1 {return false}
    } 
    return true
}

func trimAndReverse(_ str:String) -> String {
    var trimStr = str[str.index(str.startIndex, offsetBy: 1)..<str.index(str.endIndex, offsetBy: -1)]
    var result:String = ""
    for i in trimStr {
        if i == "(" {result += ")"}
        else {result += "("}
    }
    return result
}
