struct exS {
    var a:Int = 1
    
    func pa () {
        print(a)
    }
}

class exC {
    var a:Int = 2
    
    func pa() {
        print(a)
    }
}

let ls:exS = exS()
var vs:exS = exS()
vs.a = 3

let lc:exC = exC()
lc.a = 5
lc.pa()
