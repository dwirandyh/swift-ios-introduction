import Foundation

// simple function
func firstFunction(){
    print("Hello world")
    print("How are you")
}

firstFunction()

// function with parameter
func add(num1: Int, num2: Int){
    print(num1 + num2)
}

add(num1: 3, num2: 2)

// function that return value
func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

print(multiply(num1: 5, num2: 2))