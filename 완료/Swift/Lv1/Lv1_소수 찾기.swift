import Foundation

func solution(_ n:Int) -> Int {
    var result:[Int] = []
    
    for i in 2...n {
        var check:Bool = true
        for j in result {
            if i%j == 0 {
                check = false 
                break
            }
            if j > Int(sqrt(Double(n))) {
                break
            }
        }
        if check {result.append(i)}
    }
    
    return result.count
}
// 학교에서 다루지 않았으면 효율성은 통과하지 못했다...
// 1. x에 대해 판별한다고 하면 x보다 작은 소수로만 나눠보면 된다.
// 2. 나누는 소수들은 x의 제곱근보다 작은 것들로만 나눠보면 된다.
