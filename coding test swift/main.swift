let a = ["a","b","a","c","d"]

for i in 0..<10 {
    for j in a {
        print(j)
        if j == "b"{
            break
        }
    }
}
