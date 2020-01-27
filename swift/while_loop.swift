import Foundation

var counter = 0

// will check condition first then execute code block 
while counter < 10 {
    print(counter)
    counter += 1
}

counter = 0
// will execute code block first then check condition
repeat {
    print(counter)
    counter += 1
} while counter < 10