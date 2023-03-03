import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
     
    func combination(_ nums: [Int], _ targetNum: Int) -> Int {
    var resultCount:Int = 0
    var visited = Array(repeating: false, count: nums.count)
    
    func combination(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == targetNum {
            var temp:Int = 1
            for i in nowCombi {
               temp = temp * i
            }
            resultCount += temp
            return
        }
        
        for i in index..<nums.count {
            if visited[i] == true {
                continue
            }
            else {
                visited[i] = true
                combination(i+1, nowCombi + [nums[i]])
                visited[i] = false
            }
        }
    }
    
    combination(0, [])
    
    return resultCount
}
    
    
    var dic:[String:[String]] = [:]
    var category:[Int] = []
    var result:Int = 0
    for i in clothes {
        dic[i[1]] = (dic[i[1]] ?? []) + [i[0]]
    }
    for v in dic.values {
        category.append(v.count)
    }
    for i in 1...category.count {
        result += combination(category,i)
    }
    
    return result
}
