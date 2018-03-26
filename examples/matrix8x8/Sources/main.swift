import HT16K33

print("Matrix 8x8 Demo")

var matrix = Matrix8x8()

extension Matrix8x8 {
    func drawX(slow: Bool) {
        for x in (0...7) {
            self.setPixel(x: x, y: x, on: true, write: slow)
            self.setPixel(x: 7-x, y: x, on: true, write: slow)
        }
        if !slow {
            self.write()
        }
    }
    
    func fill(slow: Bool) {
        for x in (0...7) {
            for y in (0...7) {
                self.setPixel(x: x, y: y, on: true, write: slow)
            }
        }
        if !slow {
            self.write()
        }
    }
}

matrix.drawX(slow: true)
matrix.clear()

matrix.drawX(slow: false)
matrix.clear()

matrix.fill(slow: true)
matrix.clear()
