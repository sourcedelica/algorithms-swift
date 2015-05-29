import Foundation

let P = Pulverizer()
let a = 50
let b = 21
let (g, s, t) = P.extendedGCD(50, b: 21)
let sp = s - b
let tp = t + a
let gp = sp * a + tp * b
println("a=\(a) b=\(b) g=\(g) s=\(s) t=\(t) sp=\(sp) tp=\(tp) gp=\(gp)")
println(P.extendedGCD(259, b: 70))
println(P.extendedGCD(70, b: 259))
println(P.extendedGCD(6, b: 3))
println(P.extendedGCD(3, b: 6))
println(P.extendedGCD(0, b: 5))
println(P.extendedGCD(5, b: 0))

