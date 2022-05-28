import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var result: [Int] = []
    var matrix: [[Int]] = Array(repeating: Array(repeating: 0,count: columns) ,count:rows)
    var initial:Int = 1
    for i in 0..<rows {
        for j in 0..<columns {
            matrix[i][j] = initial
            initial += 1
        }
    }
    for q in queries {
        var xStartIndex:Int = q[0]-1
        var yStartIndex:Int = q[1]-1
        var xLastIndex:Int = q[2]-1
        var yLastIndex:Int = q[3]-1
        
        var temp:Int = matrix[xStartIndex][yStartIndex]
        var minElement:Int = temp
        
        var x:Int = xStartIndex
        var y:Int = yStartIndex
        for _ in 0..<(xLastIndex-xStartIndex) {
            x += 1
            minElement = min(minElement,matrix[x][y])
            matrix[x-1][y] = matrix[x][y]
        }
        for _ in 0..<(yLastIndex-yStartIndex) {
            y += 1
            minElement = min(minElement,matrix[x][y])
            matrix[x][y-1] = matrix[x][y]
        }
        for _ in 0..<(xLastIndex-xStartIndex) {
            x -= 1
            minElement = min(minElement,matrix[x][y])
            matrix[x+1][y] = matrix[x][y]
        }
        for _ in 0..<(yLastIndex-yStartIndex) {
            y -= 1
            minElement = min(minElement,matrix[x][y])
            matrix[x][y+1] = matrix[x][y]
        }
        
        matrix[xStartIndex][yStartIndex+1] = temp
        result.append(minElement)   
    }
    return result
}
