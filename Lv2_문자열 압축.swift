import Foundation

func solution(_ s:String) -> Int {
    var result:Int = s.count // 가장 짧은 길이 저장
    if result == 1 {return 1}
    for i in 1...s.count/2 {
        var temp:String = "" // 임시 메모리
        let diviedNumber:Int = s.count/i // 문자 길이를 나눈 몫 -> 분할 덩어리
        let remainNumver:Int = s.count%i // 남은 길이를 붙여줄 문자 길이
        var duplicateCount = 1 // 문자열 압축 횟수
        for j in 0..<diviedNumber { // 첫번째 덩이리부터 비교 횟수 -> 몫-1
            let str = s[s.index(s.startIndex, offsetBy: i*j)..<s.index(s.startIndex, offsetBy: (j+1)*i)]
            
            if j == diviedNumber-1 {
                if duplicateCount == 1 {
                    temp += str
                } else {
                    temp += "\(duplicateCount)\(str)"
                    duplicateCount = 1
                }
                break
            }
            
            let checker:Bool = (s[s.index(s.startIndex, offsetBy: i*j)..<s.index(s.startIndex, offsetBy: (j+1)*i)] == s[s.index(s.startIndex, offsetBy: i*(j+1))..<s.index(s.startIndex, offsetBy: (j+2)*i)] )
            
            if checker {
                duplicateCount += 1
            } else {
                if duplicateCount == 1 {
                    temp += str
                } else {
                    temp += "\(duplicateCount)\(str)"
                    duplicateCount = 1
                }
            }
        }
        temp += s[s.index(s.endIndex, offsetBy: -remainNumver)..<s.endIndex]
        
        if temp.count < result {
            result = temp.count
        }
    }

    return result
}

