import XCTest
@testable import HT16K33

class HT16K33Tests: XCTestCase {
    func testMLedSet() {
        let led = HT16K33()
        led.brightness(5)
        led.set(led: 1, on: true)
        XCTAssertEqual(led.debugDescription(0), "00 00000010", "Buffer incorrect")
        
		led.set(led: 0, on: true)
        XCTAssertEqual(led.debugDescription(0), "00 00000011", "Buffer incorrect")
        
        led.set(led: 1, on: false)
        XCTAssertEqual(led.debugDescription(0), "00 00000001", "Buffer incorrect after unset")
        
        led.clear()
    }


    static var allTests = [
        ("testMLedSet", testMLedSet),
    ]
}
