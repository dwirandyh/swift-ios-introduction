import Foundation

enum Direction: String {
    case North
    case South
    case East
    case West
}

var dir = Direction.East

switch dir {
    case Direction.North:
        print("Do forward")
    case Direction.South:
        print("Go backward")
    case .East:
        print("Take a right")
    case .West:
        print("Take a left")
}

