
import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cardsFirst = cards1
    var cardsSecond = cards2
    
    for word in goal {
        if let firstWord = cardsFirst.first, firstWord == word {
            cardsFirst.remove(at: 0)
        } else if let secondWord = cardsSecond.first, secondWord == word {
            cardsSecond.remove(at: 0)
        } else {
            return "No"
        }
    }
    
    return "Yes"
}

