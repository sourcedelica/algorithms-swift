import Foundation

public class Euclid {
    public init() {}
    
    // Logarithmic time
    public func gcd(a: Int, b: Int) -> Int {
        return a == 0 ? b : gcd(b % a, b: a)
    }

    // Linear time
    public func gcdSubtraction(a: Int, b: Int) -> Int {
        var gcd = 0
        
        if a == b {
            gcd = a
        } else {
            gcd = a > b ? gcdSubtraction(a - b, b: b) : gcdSubtraction(a, b: b - a)
        }
        return gcd
    }

    // Another logarithmic time algorithm, if you can't use modulo
    public func gcdBitShift(a: Int, b: Int) -> Int {
        var gcd = 0
        
        // Base cases
        if b == 0 || a == b {
            gcd = a
        } else if a == 0 {
            gcd = b
        } else if (a & 1) == 0 && (b & 1) == 0 {
            // a and b are both even, divide both by 2
            // and multiply answer by 2
            gcd = gcdBitShift(a >> 1, b: b >> 1) << 1
        } else if (a & 1) == 0 && (b & 1) != 0 {
            // a is even, b is odd, divide a by 2
            gcd = gcdBitShift(a >> 1, b: b)
        } else if (a & 1) != 0 && (b & 1) == 0 {
            // b is even, a is odd, divide b by 2
            gcd = gcdBitShift(a, b: b >> 1)
        } else {
            // Both are odd - use subtraction algorithm
            // Next iteration one will be even
            gcd = a > b ? gcdBitShift(a - b, b: b) : gcdBitShift(a, b: b - a)
        }
        return gcd
    }
}
