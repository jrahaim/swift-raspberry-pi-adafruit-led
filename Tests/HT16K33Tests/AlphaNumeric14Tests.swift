import XCTest
@testable import HT16K33

class AlphaNumeric14Tests: XCTestCase {
    static var allTests = [
        ("tesAlphaNumeric14", tesAlphaNumeric14),
    ]

    func tesAlphaNumeric14() {
        let a14 = AlphaNumeric14()
        a14.brightness(7)
        a14.lightAllSegments()
        a14.blink(.blink2Hz)
        sleep(2)
        a14.brightness(1)
        a14.blink(.blinkDisplayOff)
        sleep(1)
        a14.brightness(15)
        sleep(1)
        a14.brightness(7)
        a14.show("RsPi")
    }
}
