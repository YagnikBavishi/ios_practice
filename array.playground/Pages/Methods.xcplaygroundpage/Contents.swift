//: [Previous](@previous)

import Foundation

//9.
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x = x + deltaX
        y = y + deltaY
    }
}
var somePoint = Point()
somePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")

enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
ovenLight.next()

//11. type Methods

class SomeClass {
    class func someTypeMethod() {
        print("Inside the type method..")
    }
}
SomeClass.someTypeMethod()
print()

//12.

class DemoOfClassandStaticMethod {
    static func staticMethod() {
        print("Inside the static method..")
    }
    class func classMethod() {
        print("Inside the class method..")
    }
}
class SubClassOfDemo: DemoOfClassandStaticMethod {
//    override static func staticMethod() {
//        print("Static override method..")
//    }
    override class func classMethod() {
        print("Class Override method..")
    }
}
SubClassOfDemo.classMethod()
DemoOfClassandStaticMethod.staticMethod()
DemoOfClassandStaticMethod.classMethod()
