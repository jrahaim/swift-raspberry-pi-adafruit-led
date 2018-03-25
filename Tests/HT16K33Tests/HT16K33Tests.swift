import XCTest
@testable import HT16K33

class HT16K33Tests: XCTestCase {
    func testMLedSet() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        /*
        let led = HT16K33()
        led.brightness(5)
        XCTAssertTrue(led.set(led: 1, on: true), "Led not set")
        XCTAssertEqual(led.debugDescription(0), "00 00000010", "Buffer incorrect")
        
		XCTAssertTrue(led.set(led: 0, on: true), "Led not set")
        XCTAssertEqual(led.debugDescription(0), "00 00000011", "Buffer incorrect")
        
        XCTAssertTrue(led.set(led: 1, on: false), "Led set")
        XCTAssertEqual(led.debugDescription(0), "00 00000001", "Buffer incorrect after unset")
		
		XCTAssertTrue(led.set(led: 0, on: true), "Led not set")
		XCTAssertTrue(led.set(led: 2, on: true), "Led not set")		
		XCTAssertTrue(led.set(led: 4, on: true), "Led not set")
		XCTAssertTrue(led.set(led: 6, on: true), "Led not set")

        XCTAssertTrue(led.set(led: 8, on: true), "Led not set")
        XCTAssertTrue(led.set(led: 10, on: true), "Led not set")
        XCTAssertTrue(led.set(led: 12, on: true), "Led not set")
        XCTAssertTrue(led.set(led: 14, on: true), "Led not set")        
        XCTAssertEqual(led.debugDescription(1), "01 01010101", "Buffer incorrect")

        XCTAssertTrue(led.set(led: 23, on: true), "Led not set")
        XCTAssertTrue(led.set(led: 17, on: true), "Led not set")
        XCTAssertTrue(led.set(led: 19, on: true), "Led not set")
        XCTAssertTrue(led.set(led: 21, on: true), "Led not set")  
        
        print(led.debugDescription())
 */
        
//        XCTAssertEqual(led().text, "Hello, World!")
    }


    static var allTests = [
        ("testMLedSet", testMLedSet),
    ]
}
