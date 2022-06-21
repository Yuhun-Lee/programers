import Foundation

func solution(_ s:String) -> [Int] {
    var result:[Int] = []
    var filterArr = s.filter{ $0 != "{"}.split(separator: "}").map{ ss -> String in
        if ss[ss.startIndex] == "," {
            return String(ss[ss.index(ss.startIndex,offsetBy:1)...])
        }
        return String(ss)
    }.map{$0.split(separator: ",")}
    
    filterArr = filterArr.sorted{$0.count < $1.count}
    
    for i in filterArr {
        for j in i {
            if !result.contains(Int(j)!) {
                result.append(Int(j)!)
            }
        }
    }
    
    return result   
}
