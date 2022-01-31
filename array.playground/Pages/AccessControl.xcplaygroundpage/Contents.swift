//: [Previous](@previous)

import Foundation

class FirstClass {
    private var number = 10
    fileprivate var increment = 1000
    var varible = 0
    func calculation () -> Int {
        return number * number
    }
}

class SecondClass {
    let firstclass = FirstClass()
    func print() {
        firstclass.increment + firstclass.number
    }
}
