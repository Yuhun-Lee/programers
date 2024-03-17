import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var results: [Int] = []
    var alphas: [Character: Int] = [:]
    
    keymap.forEach { key in
        for (index, alpha) in key.enumerated() {
            guard let count = alphas[alpha] else {
                alphas.updateValue(index + 1, forKey: alpha)
                continue
            }
            if count != 1 && count > index {
                alphas.updateValue(index + 1, forKey: alpha)
            }
        }
    }
    
    for target in targets {
        var result = 0
        for alpha in target {
            guard let count = alphas[alpha] else {
                result = -1
                break
            }
            result += count
        }
        results.append(result)
    }
    
    
    return results
}
