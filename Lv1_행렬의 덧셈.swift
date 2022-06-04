func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for i in 0..<arr1.count {
        var temp: [Int] = []
        for j in 0..<arr1[i].count {
            temp.append(arr1[i][j] + arr2[i][j])
        }
        result.append(temp)
    }
    return result
}
