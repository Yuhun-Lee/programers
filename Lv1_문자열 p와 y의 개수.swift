import Foundation

func solution(_ s:String) -> Bool
{
    var count = 0
    for i in s.lowercased() {
        if i == "p" {count+=1}
        else if i == "y" {count-=1}
    }
    
    return count == 0
}
