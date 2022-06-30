import Foundation

func solution(_ s:String) -> [Int] {
    var result:[Int] = [0,0]
    
    
    func change(_ str:String) {
        if str == "1" {return}
        result[0] += 1
        
        var newStr:String = str.map{
            if $0 == "0" {
                result[1] += 1
                return ""
            }
            else {
                return "1"
            }
        }.joined()
        
        var binary:String = String(newStr.count,radix:2)
        change(binary)
    }
    
    change(s)
    
    return result
}
