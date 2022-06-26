import Foundation

func solution(_ n:Int) -> [Int] {
    
    if n == 1 {return [1]}
    
    let total:Int = (1...n).reduce(0, +)
    var triangle:[[Int]] = []
    
    for i in 1...n {
        triangle.append(Array(repeating:0, count: i))
    }
    
    var downCount:Int = n-1
    var upCount:Int = n-2
    var rightCount:Int = n-1
        
    var row:Int = 0
    var column:Int = 0
    triangle[row][column] = 1
    var counter:Int = 2
    
    while counter != total+1 {
        // 아래로
        for _ in 0..<downCount {
            row += 1
            if triangle[row][column] != 0 {row -= 1; break}
            triangle[row][column] = counter
            counter += 1
        }   
        downCount -= 2
        
        // 오른쪽으로
        for _ in 0..<rightCount {
            column += 1
            triangle[row][column] = counter
            counter += 1
        }
        rightCount -= 3
        
        if upCount < 1 {break}
        
        // 위로
        for _ in 0..<upCount {
            row -= 1
            column -= 1
            triangle[row][column] = counter
            counter += 1
        }
        upCount -= 3
    }
    
    return triangle.flatMap{$0}
}
