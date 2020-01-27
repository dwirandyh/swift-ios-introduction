import Foundation

extension Int {
    // self it means its value
    mutating func plusOne(){
        self += 1
    }
}

var num1 = 10

// call Extension method
num1.plusOne()

print(num1)