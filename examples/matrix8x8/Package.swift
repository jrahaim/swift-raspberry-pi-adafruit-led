// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "Matrix8x8",
    dependencies: [
        .Package(url: "https://github.com/jrahaim/swift-raspberry-pi-adafruit-led.git", majorVersion: 1)
    ]
)
