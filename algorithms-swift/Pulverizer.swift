import Foundation

class Pulverizer {
    // Returns (gcd(a, b), s, t) such that gcd(a, b) = sa + tb
    // http://en.wikipedia.org/wiki/Extended_Euclidean_algorithm

    // TODO
    // The quotients of a and b by their greatest common divisor, which are output,
    // may have an incorrect sign. This is easy to correct at the end of the computation,
    // but has not been done here for simplifying the code.
    // Similarly, if either a or b is zero and the other is negative,
    // the greatest common divisor that is output is negative,
    // and all the signs of the output must be changed.
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
