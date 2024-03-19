import Foundation

var map: [[Character]]!
var rowRange: Range<Int>!
var colRange: Range<Int>!


func solution(_ maps:[String]) -> [Int] {
    var ilands: [Int] = []
    map = maps.map{ $0.map{ $0 } }
    rowRange = 0..<map.count
    colRange = 0..<map[0].count
    
    for x in rowRange {
        for y in colRange {
            let food = dps(x, y)
            if food != 0 { ilands.append(food) }
        }
    }
    
    return ilands.isEmpty ? [-1] : ilands.sorted(by: < )
}

func dps(_ x: Int,_ y:Int) -> Int {
   if map[x][y] == "C" { return 0 }
    else if map[x][y] == "X" {
        map[x][y] = "C"
        return 0
    }

    var foodSum = Int(String(map[x][y]))!
    map[x][y] = "C"
    let directions = [(-1, 0), (0, 1), (1, 0), (0, -1)]

    for direction in directions {
        let nextX = x + direction.0
        let nextY = y + direction.1

        if !rowRange.contains(nextX) || !colRange.contains(nextY) {
            continue
        }

        foodSum += dps(nextX, nextY)
    }

    return foodSum
}
