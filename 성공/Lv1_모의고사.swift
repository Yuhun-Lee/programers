import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let first: [Int] = [1,2,3,4,5]
    let second: [Int] = [2,1,2,3,2,4,2,5]
    let third: [Int] = [3,3,1,1,2,2,4,4,5,5]
    var right: [Int: Int] = [1: 0, 2: 0, 3: 0]
    var rank: [Int] = []
    
    print(right)
    
    for i in 0..<answers.count {
        if first.count-1 > i && first[i] == answers[i] {
            right[1]! += 1
        } else if first[i % first.count] == answers[i] {
            right[1]! += 1
        }
        if second.count-1 > i && second[i] == answers[i] {
            right[2]! += 1
        } else if second[i % second.count] == answers[i] {
            right[2]! += 1
        }
        if third.count-1 > i && third[i] == answers[i] {
            right[3]! += 1
        } else if third[i % third.count] == answers[i] {
            right[3]! += 1
        }
    }
        
    let sortedRight = right.sorted{ $0.1 > $1.1 }.sorted{$0.0 < $1.0}
    rank.append(sortedRight[0].key)
        
    for i in 1..<sortedRight.count {
        if sortedRight.first?.value == sortedRight[i].value {
            rank.append(sortedRight[i].key)
        } else {
            break
        }
    }
    
    rank.sort()
    
    return rank
}

print(solution([1,3,2,4,2]))
