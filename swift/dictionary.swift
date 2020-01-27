import Foundation
var myDict = ["blue": "Water", "green": "Land"]

// get value by key
print(myDict["blue"])

// add new value
myDict["red"] = "bridge"

// print all items
print(myDict)

myDict["blue"] = "ocean"
print(myDict)

// remove item by key
myDict.removeValue(forKey: "red")
print(myDict)

print(myDict.count)






