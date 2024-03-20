import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var result: String = ""
    var sStr = s.map { $0 }
    var alphas = "abcdefghijklmnopqrstuvwxyz".map{ $0 }
    
    for alpha in skip {
        if let skipIndex = alphas.firstIndex(of: alpha) {
            alphas.remove(at: skipIndex)
        }
    }
    let mod = alphas.count
    
    for str in sStr {
        if let currentIndex = alphas.firstIndex(of: str) {
            let newIndex = (currentIndex + index) % mod
            result.append(alphas[newIndex])
        }
    }
    
    return result
}

print(solution("aukks", "wbqd", 5))
