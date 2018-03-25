public class Matrix8x8 : HT16K33 {
    public func setPixel(x: Int, y: Int, on: Bool, write: Bool = true) -> Bool {
        let led = (y * 16 + ((x + 7) % 8))
        return self.set(led: led, on: on, write: write)
    }
}
