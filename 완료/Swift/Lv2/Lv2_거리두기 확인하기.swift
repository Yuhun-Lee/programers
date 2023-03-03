import Foundation

func solution(_ places:[[String]]) -> [Int] {
    var result:[Int] = []
    for matrix in places {
        var check:Int = 1
        var arr:[[Character]] = []
        
        // 위치를 배열로 변환
        for row in matrix {
            var temp:[Character] = []
            for c in row {
                temp.append(c)
            }
            arr.append(temp)
            temp = []
        }
        
        // p의 위치 탐색
        var pointP:[[Int]] = []
        for i in 0..<arr.count {
            for j in 0..<arr[i].count {
                if arr[i][j] == "P" {
                    pointP.append([i,j])
                }
            }
        }

        if pointP.isEmpty {
            result.append(check)
            continue
        }
        
        var isZero:Bool = false
        for i in 0..<pointP.count-1 {
            if isZero {break}
            for j in i+1..<pointP.count {
                let x1 = pointP[i][0]
                let y1 = pointP[i][1]
                let x2 = pointP[j][0]
                let y2 = pointP[j][1]
                
                let counter:Int = abs(x1-x2) + abs(y1-y2)
                if counter == 1 {
                     check = 0
                     isZero = true
                     break
                 }
                 else if counter == 2 {
                     // 일렬배치의 경우
                     if x1 == x2 {
                         if arr[x1][(y1+y2)/2] != "X" {
                             check = 0
                             isZero = true
                             break
                         }
                     }
                     else if y1 == y2 {
                         if arr[(x1+x2)/2][y1] != "X" {
                             check = 0
                             isZero = true
                             break
                         }
                     }
                     else { // 대각의 경우
                         if arr[x1][y2] != "X" || arr[x2][y1] != "X" {
                             check = 0
                             isZero = true
                             break
                         }
                     }

                 }
            }
        }
        result.append(check)
    }
    
    
    return result
}
