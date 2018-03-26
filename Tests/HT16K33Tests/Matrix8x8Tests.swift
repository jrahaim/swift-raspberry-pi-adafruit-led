import XCTest
@testable import HT16K33

class Matrix8x8Tests: XCTestCase {
    func testMatrix8x8() {
        let m8x8 = Matrix8x8()
        m8x8.write()
        m8x8.setPixel(x: 0, y: 0, on: true, write: false)
        m8x8.setPixel(x: 1, y: 1, on: true, write: false)
        m8x8.setPixel(x: 2, y: 2, on: true, write: false)
		m8x8.setPixel(x: 3, y: 3, on: true, write: false)
		m8x8.setPixel(x: 4, y: 4, on: true, write: false)
		m8x8.setPixel(x: 5, y: 5, on: true, write: false)
		m8x8.setPixel(x: 6, y: 6, on: true, write: false)
		m8x8.setPixel(x: 7, y: 7, on: true, write: false)

        m8x8.setPixel(x: 7, y: 0, on: true, write: false)
        m8x8.setPixel(x: 6, y: 1, on: true, write: false)
        m8x8.setPixel(x: 5, y: 2, on: true, write: false)
		m8x8.setPixel(x: 4, y: 3, on: true, write: false)
		m8x8.setPixel(x: 3, y: 4, on: true, write: false)
		m8x8.setPixel(x: 2, y: 5, on: true, write: false)
		m8x8.setPixel(x: 1, y: 6, on: true, write: false)
		m8x8.setPixel(x: 0, y: 7, on: true, write: false)
		m8x8.write()
        m8x8.blink(.blink2Hz)
        
        sleep(1)
        m8x8.clear()
        m8x8.blink(.blinkDisplayOff)
        for x in 0...7 {
            for y in 0...7 {
                m8x8.setPixel(x: x, y: y, on: true, write: true)
            }
        }
        for x in (0...7).reversed() {
            for y in (0...7).reversed() {
                m8x8.setPixel(x: x, y: y, on: false, write: true)
            }
        }
		sleep(1)
        m8x8.clear()
        print(m8x8.debugDescription())
    }
    
    static var allTests = [
        ("testMatrix8x8", testMatrix8x8),
    ]
}
