import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var sum: Int = 0;
    
    (left...right).map { a in
        print(a)
        print(type(of: a))
        
    }
    
    return sum
}

print(solution(5, 8))
