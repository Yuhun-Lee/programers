import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let space:Int = brown+yellow
    
    for w in 3...space/3 {
        for h in 3...w {
            if w*h == space && (w-2)*(h-2) == yellow  {return [w,h]}            
        }
    }
    
    return []
}
