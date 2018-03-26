# swift-raspberry-pi-adafruit-led
Swift implementation for accessing adafruit LEDs on a raspberry pi

Building on the work of https://github.com/uraimo/SwiftyGPIO and https://github.com/adafruit/Adafruit_LED_Backpack 

To add swift support to the Adafruit Matrix 8x8 i2c LED https://learn.adafruit.com/adafruit-led-backpack/ (more coming).

## requirements

- Raspberry PI
- Raspbery PI running Unbuntu 16.04 Match
- i2c Interface to an Adafruit 8x8 matrix.
- Swift 3.1

## installation

add the following dependency to your Package.swift

```.Package(url: "https://github.com/jrahaim/swift-raspberry-pi-adafruit-led.git", majorVersion: 1)```

## usage

init:

```swift

import HT16K33

var matrix = Matrix8x8(port: 0x70, board: .RaspberryPi3)

matrix.setPixel(x: x, y: x, on: true)
```

## Supports
- Blinking
- Brightness
- clearing
