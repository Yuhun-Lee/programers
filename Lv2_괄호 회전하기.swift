import Foundation

func solution(_ s:String) -> Int {
    if s.count % 2 == 1 { // 홀수면 0
        return 0
    }
    var result:Int = 0
    var str:[Character] = s.map{$0}
    var stack:[Character] = []
    
    for _ in 0..<s.count {
        var check:Bool = true
        str.append(str[0])
        str.removeFirst()
        a: for i in str {
            switch i {
                case "(":
                    stack.append("(")
                case ")":
                    guard let s = stack.last else {check = false; break}
                    if s == "(" {
                        stack.removeLast();
                    } else {
                        check = false
                        break
                    }
                case "{":
                    stack.append("{")
                case "}":
                    guard let s = stack.last else {check = false;break}
                    if s == "{" {
                        stack.removeLast();
                    } else {
                        check = false
                        break
                    }
                case "[":
                    stack.append("[")
                case "]":
                    guard let s = stack.last else {check = false;break}
                    if s == "[" {
                        stack.removeLast();
                    } else {
                        check = false
                        break
                    }
                default:
                    continue
            }
        }
        
        if check {result += 1}
        stack.removeAll()
    }
    
    return result
}
