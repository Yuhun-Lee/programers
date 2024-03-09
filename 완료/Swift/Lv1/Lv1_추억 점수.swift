import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result: [Int] = []
    var scoreDic: [String: Int] = [:]
    
    for i in 0..<name.count {
        scoreDic.updateValue(yearning[i], forKey: name[i])
    }
    
    photo.forEach { onePhoto in
        var score = 0
        onePhoto.forEach { person in
            score += scoreDic[person] ?? 0
        }
        result.append(score)
    }
    
    return result
}
