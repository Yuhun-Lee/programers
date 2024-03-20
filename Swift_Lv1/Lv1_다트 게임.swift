import Foundation

func solution(_ dartResult:String) -> Int {
    let bonus: [Character:Int] = ["S":1, "D":2, "T":3]
    var result: Int = 0
    var number: String = ""
    var data: [Int] = [0,0,0]
    var index: Int = -1
    
    for dart in dartResult{
        if dart == "*" {
            if index >= 1 {
                data[index-1] *= 2
            }
            data[index] *= 2
            number = ""
        } else if dart == "#" {
            data[index] = -data[index]
            number = ""
        } else if dart == "S" || dart == "D" || dart == "T" {
            data[index] = Int(pow(Double(number)!, Double(bonus[dart]!)))
            number = ""
        } else {
            if number.isEmpty && index < 2 {
                index += 1
            }
            number += String(dart)
        }
    }
    result = data.reduce(0, +)
    
    return result
}

print(solution("1D2S#10S"))
