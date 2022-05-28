import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var cards = sizes
    var width:[Int] = []
    var height:[Int] = []
    
    for i in 0..<cards.count {
        cards[i].sort()
        
        var check:Bool = true
        for j in cards[i] {
            if check {
                width.append(j)
            }
            else{
                height.append(j)
            }
            check = false
        }
    }
    
    return width.max()!*height.max()!
}
