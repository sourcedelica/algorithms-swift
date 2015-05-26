import Foundation

class Pulverizer {
    // Returns (gcd(a, b), s, t) such that gcd(a, b) = sa + tb
    // http://en.wikipedia.org/wiki/Extended_Euclidean_algorithm
    func extendedGCD(var a: Int, var b: Int) -> (Int, Int, Int) {
        var s = 0; var old_s = 1
        var t = 1; var old_t = 0
        var r = b; var old_r = a

        while (r != 0) {
            let quotient = old_r / r
            (old_r, r) = (r, old_r - quotient * r)
            (old_s, s) = (s, old_s - quotient * s)
            (old_t, t) = (t, old_t - quotient * t)
        }

        return (old_r, old_s, old_t)
    }
}
