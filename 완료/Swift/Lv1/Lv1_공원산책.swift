import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let width = (0..<park[0].count)
    let height = (0..<park.count)
    
    var parkMap = park.map { $0.map{ $0 } }
    var currentPostion: (Int, Int) = (0, 0)
    
    outer: for (i, row) in parkMap.enumerated() {
        for (j, char) in row.enumerated() {
            if char == "S" {
                currentPostion = (i, j)
                parkMap[i][j] = "O"
                break outer
            }
        }
    }
    
    routes.forEach { command in
        let split = command.split{ $0 == " " }.map{String($0)}
        let direction = split[0]
        let step = Int(split[1])!
        
        
        switch direction {
        case "E": check((0, 1), step)
        case "W": check((0, -1), step)
        case "S": check((1, 0), step)
        case "N": check((-1, 0), step)
        default: return
        }
    }
    
    func check(_ direction: (Int, Int),_ step: Int) {
        let destination = (
            currentPostion.0 + direction.0 * step,
            currentPostion.1 + direction.1 * step
        )
        guard height.contains(destination.0) && width.contains(destination.1)
        else { return }
        
        for i in 1...step {
            let position = (
                currentPostion.0 + direction.0 * i,
                currentPostion.1 + direction.1 * i
            )
            
            if parkMap[position.0][position.1] == "X" { return }
        }
        
        parkMap[currentPostion.0][currentPostion.1] = "O"
        parkMap[destination.0][destination.1] = "S"
        
        currentPostion = destination
    }
    
    return [currentPostion.0, currentPostion.1]
}
