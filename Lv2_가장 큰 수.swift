import Foundation

func solution(_ numbers:[Int]) -> String {
    // 배열에 0만 있는 경우 000000 같은 경우가 나와 출력이 위배됨으로 확인 필요
    var check:Bool = true;
    for i in numbers {
        if i != 0 {check = false; break}
    }
    if check {return "0"}
    
    return  numbers.map{String($0)}.sorted{

	// 다 풀고보니 If문으로 나눌 필요 없이 그냥 else에 있는 연산만 해주면 된다
        // String의 첫번째 문자는 $0[$0.startIndex] 또는 $0.prefix(1)
        if $0[$0.startIndex] != $1[$1.startIndex] { return $0[$0.startIndex] > $1[$1.startIndex] }
        else if $0[$0.startIndex] == $1[$1.startIndex] && $0.count == $1.count {return $0 > $1}
        else {
            return ($0+$1 > $1+$0)
        }
    }.joined()
}
