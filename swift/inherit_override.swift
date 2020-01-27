import Foundation

class Parent {
    func parentMethod(){
        print("This is a parent method")
    }

    func getName(){
        print("This is a parent")
    }
}

// create parent Object
var p = Parent()
p.parentMethod()

class Child : Parent {
    func childMethod() {
        print("This is a child method")
    }

    // Override getName method from parent class
    override func getName(){
        print("This is a child")
    }

    // Overloading getName method
    func getName(firstName: String){
        print(firstName)
    }
}

var c = Child()
c.childMethod()
c.parentMethod()

c.getName()
c.getName(firstName: "Dwi")

