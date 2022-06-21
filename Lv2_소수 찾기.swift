import Foundation

func solution(_ numbers:String) -> Int {
    var numArr:[String] = Array(numbers).map{String($0)}
    var needToCheck:Set<Int> = []
    var result:Int = 0
    
    for i in 1...numArr.count {
        var pm = permute(numArr,i)
        for j in pm {
            needToCheck.insert(Int(j.joined())!)
        }
    }
    print(needToCheck)
    for i in needToCheck {
        if isPrime(i) {result += 1}
    }
    
    return result
}

func permute<T>(_ nums: [T], _ targetNum: Int) -> [[T]] {
    var result = [[T]]()
    var visited = [Bool](repeating: false, count: nums.count)
    
    func permutation(_ nowPermute: [T]) {
        if nowPermute.count == targetNum {
            result.append(nowPermute)
            return
        }
        for i in 0..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                permutation(nowPermute + [nums[i]])
                visited[i] = false
            }
        }
    }
    permutation([])
    
    return result
}

func isPrime(_ num:Int) -> Bool {
    if num < 2 {return false}
    else if num == 2 {return true}
    
    for i in 2..<num {
        if num%i == 0 {return false}
    }
    
    return true
}
