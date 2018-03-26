# Swift Raspberry Pi HT16K33 implementation

<p align="center">
	<a href="https://raw.githubusercontent.com/uraimo/SwiftyGPIO/master/LICENSE"><img src="http://img.shields.io/badge/License-MIT-blue.svg?style=flat"/></a>
	<a href="#"><img src="https://img.shields.io/badge/OS-linux-green.svg?style=flat"/></a> 
	<a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/Swift-3.x-orange.svg?style=flat"/></a> 
	<a href="https://github.com/apple/swift-package-manager"><img src="https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg"/></a>
</p>

Swift implementation for accessing adafruit LEDs on a raspberry pi

Building on the work of https://github.com/uraimo/SwiftyGPIO and https://github.com/adafruit/Adafruit_Python_LED_Backpack/ 

To add swift support for HT16K33 driven LEDs (like these from Adafruit):
- Adafruit Matrix 8x8 i2c LED https://learn.adafruit.com/adafruit-led-backpack/
- 4 Character 14 segment alpha numeric disoplay https://www.adafruit.com/product/1911

## requirements

- Raspberry PI
- Raspbery PI running Unbuntu 16.04 Match
- Adafruit HT16K33 i2c Interface for 8x8 matrix or Alphanumeric 14 segment display.
- Swift 3.1

## installation

add the following dependency to your Package.swift

```.Package(url: "https://github.com/jrahaim/swift-raspberry-pi-adafruit-led.git", majorVersion: 1)```

## usage

### Matrix8x8
```swift

import HT16K33

var matrix = Matrix8x8(port: 0x70, board: .RaspberryPi3)

matrix.setPixel(x: x, y: x, on: true, write: true)
```

### AlphaNumeric14
```swift

import HT16K33

var a14 = AlphaNumeric14(port: 0x70, board: .RaspberryPi3)

a14.brightness(7)
a14.show("RsPi")
```

## Supports
- Blinking
- Brightness
- clearing

## Other Devices connected to HT16K33

It should be pretty straight forward to get other LEDs working. These are the only 2 deivices I have on hand to test.

## Disclaimer

I have no relationship with Adafruit other than being a customer.
