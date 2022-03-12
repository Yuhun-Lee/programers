import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer: Int = 0
    var checknumber: Int
    
    // 3가지를 뽑아내는 과정을 검색했다..
    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count-1 {
            for k in j+1..<nums.count {
                checknumber = nums[i] + nums[j] + nums[k]
                // 소수 판별은 스스로
                for c in 2..<checknumber {
                    if checknumber % c == 0 {
                        break
                    } else if c == checknumber-1 {
                        answer += 1
                    }
                }
            }
        }
    }
    return answer
}

print(solution([1,2,7,6,4]))
