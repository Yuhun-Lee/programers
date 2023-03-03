import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var map1: [String] = []
    var map2: [String] = []
    
    map1 = decode(n, arr1)
    map2 = decode(n, arr2)
    
    return integrateMaps(map1, map2)
}

func decode(_ n:Int,_ arr:[Int]) -> [String]{
    var tempMap:[String] = []
    for i in 0...n-1 {
        var forDecode = arr[i]
        var temp : String = ""
        for _ in 0...n-1{
            if forDecode % 2 == 1 {
                temp = "#" + temp
            } else {
                temp = " " + temp
            }
            forDecode = forDecode / 2
        }
        tempMap.append(temp)
    }
    
    return tempMap
}

func integrateMaps(_ map1:[String], _ map2:[String]) -> [String] {
    var integratedMap: [String] = []
    
    for i in 0...map1.count-1{
        var temp: String = ""
        for j in map1[i].indices{
            if map1[i][j] == "#" || map2[i][j] == "#" {
                temp += "#"
            } else {
                temp += " "
            }
        }
        integratedMap.append(temp)
    }
    
    return integratedMap
}


print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))
