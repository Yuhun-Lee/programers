func solution(_ s:String, _ n:Int) -> String {
    var result:String = ""
    let alpha:[String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    for i in s {
        if i == " " {result += " "; continue}
        if i.isUppercase {
            let index = alpha.firstIndex(of: String(i).lowercased())!
            result += alpha[(index + n) % 26].uppercased()
        }
        else {
            let index = alpha.firstIndex(of: String(i))!
            result += alpha[(index + n) % 26]
        }
    }
    return result
}
