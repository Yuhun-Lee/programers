func solution(_ s:String) -> String {
    var lower:[String] = []
    var upper:[String] = []
    for i in s {
        if i.isUppercase {upper.append(String(i))}
        else {lower.append(String(i))}
    }
    
    return (lower.sorted(by: >) + upper.sorted(by: >)).joined()
}
