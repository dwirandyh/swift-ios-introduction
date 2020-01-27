import Foundation

for num in 1...10 {
    print(num)
}

for num in 10...20 {
    print(num)
}

// same as for (int i = 50; i > 0; i=i-5)
for num in stride(from: 50, to: 0, by: -5){
    print(num)
}

// array
var shoppingList = ["Apples", "Oranges", "Bananas"]
// dictionary
var legend = ["blue": "Ocean", "green": "Land"]

// looping each item in array
for item in shoppingList {
    print(item)
}

// looping and getting index & value from array
for (index, value) in shoppingList.enumerated() {
    print(index)
    print(value)
}

// Looping each item in dictionary
for (key, value) in legend {
    print(key)
    print(value)
}