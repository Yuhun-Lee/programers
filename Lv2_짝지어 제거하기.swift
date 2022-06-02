import Foundation

func solution(_ s:String) -> Int{
    var result:[Character] = []
    
    for i in s {
        if result.isEmpty || result.last != i {
            result.append(i)
        }
        else {result.popLast()}
    }
    
    
    
    return result.isEmpty ? 1 : 0
}
// 스택을 이용해야 효율성 테스트를 통과할 수 있었다.
