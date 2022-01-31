//: [Previous](@previous)

import Foundation

//Protocol example
protocol Greet {
  var name: String { get }
  func message()
}
class Employee: Greet {
  var name = "Perry"

  func message() {
    print("Good Morning", name)
  }
}

var employee1 = Employee()
employee1.message()
print()

//generic function
func displayData<T>(data: T) {
  print("Generic Function:")
  print("Data Passed:", data)
}

displayData(data: "Swift")
displayData(data: 5)
displayData(data: 5.8)
