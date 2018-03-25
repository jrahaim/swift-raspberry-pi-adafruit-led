import Glibc
import SwiftyGPIO

public enum BlinkFrequency : UInt8 {
    case blinkDisplayOff  = 0x00
    case blink2Hz = 0x02
    case blink1HZ = 0x04
    case blinkHalfHZ = 0x06
}

public class HT16K33 {
    var port = 0x70
    lazy var i2cs = {
        return SwiftyGPIO.hardwareI2Cs(for:.RaspberryPi3)!
    }()
    
    lazy var i2c : I2CInterface = {
        return self.i2cs[1]
    }()
    
    var buffer = Array(repeating: UInt8(0b0000000), count: 16)
    
    let systemSetup : UInt8 = 0x20
    let Oscillator : UInt8 = 0x01
    let brightness : UInt8 = 0xE0
    let blinkComand : UInt8 = 0x80
    let blinkDisplayOn : UInt8 = 0x01

    
    public required init() {
        self.writeByte(port, value: (systemSetup | Oscillator))
        self.blink(.blinkDisplayOff)
        self.brightness(15)
    }
    
    public func blink(_ frequency: BlinkFrequency) {
        self.writeByte(port, value: (blinkComand | blinkDisplayOn | frequency.rawValue))
    }
    
    public func brightness(_ bright: UInt8) {
        self.writeByte(port, value: (brightness | bright))
    }

    public func clear() {
        buffer = Array(repeating: UInt8(0b0000000), count: 16)
        self.write()
    }

    public func set(led: Int, on: Bool, write: Bool = true) -> Bool {
        // Sets specified LED (value of 0 to 127) to the specified value, 0/False for off and 1 (or any True/non-zero value) for on.
        guard led >= 0, led <= 127 else {
            print("Led must be between 0-127.\n")
            return false
        }
        let pos = led / 8
        let offset = led % 8
        
        if on {
            buffer[pos] = buffer[pos] | UInt8(1 << offset)
        } else {
            buffer[pos] = buffer[pos] & ~UInt8(1 << offset)
        }
        
        if (write) {
            self.write()
        }
        return true
    }
    
    private func writeByte(_ port: Int, value: UInt8) {
        //print("WriteByte \(port): \(value)")
        
        i2c.writeByte(port, value: value)
    }
    
    func write() {
        for i in 0..<buffer.count {
            i2c.writeByte(port, command: UInt8(i), value: UInt8(buffer[i]))
        }
    }
    
    public func debugDescription(_ pos: Int) -> String {
        let posStr = String(format: "%02d", pos)
        return "\(posStr) \(buffer[pos].bitString())"
    }
    
    public func debugDescription() -> String {
        var result = [String]()
        for n in 0..<16 {
            result.append(self.debugDescription(n))
        }
        return result.joined(separator: "\n")
    }
}

extension UInt8 {
    func bitString() -> String {
        var result = ""
        for pos in (0...7).reversed() {
            if (self & UInt8(1 << pos)) > 0 {
                result.append("1")
            } else {
                result.append("0")
            }
        }
        return result
    }
}

