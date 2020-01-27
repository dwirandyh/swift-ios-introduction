import Foundation

enum Direction: String {
    case North = "Go Forward"
    case South = "Go backward"
    case East = "Take a right"
    case West = "Take a left"
}

var dir = Direction.East
// get raw value from enum
print(dir.rawValue)

