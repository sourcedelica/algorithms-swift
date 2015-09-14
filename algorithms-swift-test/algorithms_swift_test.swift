import Cocoa
import XCTest

class algorithms_swift_test: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGcd() {
        let eu = Euclid()
        XCTAssert(eu.gcd(21, b: 14) == 7, "gcd(21, 14) should be 7")
    }

    func testGcdSubtraction() {
        let eu = Euclid()
        XCTAssert(eu.gcdSubtraction(21, b: 14) == 7, "gcdSubtraction(21, 14) should be 7")
    }

    func testGcdBitShift() {
        let eu = Euclid()
        XCTAssert(eu.gcdBitShift(21, b: 14) == 7, "gcdBitShift(21, 14) should be 7")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
