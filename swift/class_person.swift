import Foundation

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int){
        self.name = name
        self.age = age
    }

    func greeting(){
        print("You name is \(self.name) and you are \(self.age) years old")
    }
}

var firstPerson = Person(name: "Randy", age: 16)
print(firstPerson.age)
print(firstPerson.name)

firstPerson.greeting()