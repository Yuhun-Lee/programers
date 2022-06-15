import Foundation

func solution(_ numbers:[Int]) -> String {
    return numbers.map{String($0)}.sorted(by: {
        
        let first:[Character] = Array($0);
        let second:[Character] = Array($1);
        
        if first[0] != second[0] { return first[0] > second[0] }
        else if first[0] == second[0] && $0.count == $1.count {return $0 > $1}
        else {
            return ($0+$1 > $1+$0) ? true : false
        }
    }).joined()
}
