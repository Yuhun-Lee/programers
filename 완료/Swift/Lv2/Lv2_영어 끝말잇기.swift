import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var dupliWords:[String] = []
    var roundCount:Int = 0
    var personNumber:Int = 1
    var beforeWord:String = ""
    
    for word in words {
        if personNumber == 1 {roundCount += 1}
        if dupliWords.contains(word) || wrongWordCheck(beforeWord, word) {
            return [personNumber,roundCount]
        }
        dupliWords.append(word)
        beforeWord = word
        personNumber += 1
        if personNumber == n+1 {personNumber = 1}
    }
    
    return [0,0]
}

func wrongWordCheck(_ before:String,_ after:String) -> Bool {
    guard before != "" else {return false}
    return before.last != after.first
}
