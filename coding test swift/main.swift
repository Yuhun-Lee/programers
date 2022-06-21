import Foundation

func solution(_ s:String) -> [Int] {
    
    var filterArr = s.filter{ $0 != "{"}.split(separator: "}").map{ ss -> String in
        if ss[ss.startIndex] == "," {
            return String(ss[ss.index(ss.startIndex,offsetBy:1)...])
        }
        return String(ss)
    }
    print(filterArr)
    
    return []
}

print(solution("{{2},{2,1},{2,1,3},{2,1,3,4}}"))
