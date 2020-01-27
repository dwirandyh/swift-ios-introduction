import Foundation

protocol Fly {
    var weight: Int {get set}

    func fly() -> String
}

class Pigeon: Fly {
    var weight = 50

    // without override keyword
    func fly() -> String {
        return "I can fly"
    }
}

var p = Pigeon()
print(p.fly())

p.weight = 70
print(p.weight)