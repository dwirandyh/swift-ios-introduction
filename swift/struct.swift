import Foundation

var name = "Avi"
var latitude = 41.123
var longitude = 42.123

struct userLocation {
    var name: String
    var latitude: Double
    var longitude: Double
}

var myLoc = userLocation(name: "Avi", latitude: 41.123, longitude: 42.123)
print(myLoc.latitude)
print(myLoc.longitude)
print(myLoc.name)

func getLoc(loc: userLocation){
    print(loc.name)
}

myLoc.name = "Randy"
getLoc(loc: myLoc)