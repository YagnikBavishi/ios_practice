//: [Previous](@previous)

import Foundation
import Darwin

// Struct with default init
struct Item {
    let name: String
    let cost: Int
}
let object = Item(name: "laptop", cost: 100000)
print()

//class with init
class ItemClass {
    let name: String
    let cost: Int
    init(name: String, cost: Int) {
        self.name = name
        self.cost = cost
    }
}
let ojectOfClass = ItemClass(name: "Mobile", cost: 20000)
print(ojectOfClass.name)
print()

//Failable Initializer
struct Person {
    var addarNumber: String
    init?(addarNumber: String){
        if(addarNumber.count < 12){
            return nil
        }
        self.addarNumber = addarNumber
    }
}
let objectOfPerson = Person(addarNumber: "1234-5555")
print(objectOfPerson?.addarNumber ?? "Invalid Aaddar card Number")
print()

//Deinitialization
class DeinitializationExample{
    init() {
        print("Init bolck is called..")
    }
    func myFuction() {
       print("Function block is called...")
    }
    deinit {
       print("deinit bolck is callled..")
    }
}
var objectOfDeinitialization: DeinitializationExample? = DeinitializationExample()
objectOfDeinitialization?.myFuction()
objectOfDeinitialization = nil
print()

//Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.
enum ValidationError: Error {
    case shortPassword
    case emptyPassword
    case inSufficientQuantity
}
struct PassWordValidations {
    func validation(givenPassword: String) throws {
        if givenPassword.count > 1 && givenPassword.count < 8 {
            throw ValidationError.shortPassword
        }
        if givenPassword.count == 0 {
            throw ValidationError.emptyPassword
        }
    }
    
}
let objectValidation = PassWordValidations()
do {
    try objectValidation.validation(givenPassword: "")
    print("PassWord is okk..")
} catch ValidationError.shortPassword {
    print("Your Password is too short..")
} catch ValidationError.emptyPassword {
    print("Your Password Filed is empty Please enter somethings into...")
}
print()

// Create a program for shopping cart. If desired quantity for an item is not available, throw exception
struct ShoppingCart {
    func CheckQuantity(itemQuantity: Int) throws {
        if(itemQuantity < 10) {
            throw ValidationError.inSufficientQuantity
        }
    }
}
let objectOfShoppingCart = ShoppingCart()
do {
    try objectOfShoppingCart.CheckQuantity(itemQuantity: 15)
    print("Desired Quantity for an item is available")
} catch ValidationError.inSufficientQuantity {
    print("Desired Quantity for an item is not available..")
}

//extension
struct Student {
    var name: String = ""
    var age: Int = 0
    func display() {
        print(name, age)
    }
}
var student = Student()
student.name = "Yagnik"
student.age = 21
student.display()

extension Student {
    func isVoter() -> Bool {
        if(age > 18) {
            return true
        }
        else {
            return false
        }
    }
}
print(student.isVoter())


extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}
3.repetitions {
    print("Hello!")
}
print()

//
//Create following string manipulation functions using string extensions:
//Add a character in a string at 5th position
//Replace one character with other in a string
//Remove white spaces from string
//Get number of words in a string
var string = "yagnik bavishi"
extension String {
    
    func addCharacter(index: Int, character: Character) -> String {
        var string = [Character](String(self))
        string[index - 1] = character
        return String(string)
    }
    
    func withReplacedCharacters() -> String {
        let stringReplacedOccurences = self.replacingOccurrences(of: "y", with: "*")
        return stringReplacedOccurences
    }
    
    func removeWhiteSpace() -> String {
        let components = self.replacingOccurrences(of: " ", with: "")
        return components
    }
    
    func countNumberOfWords () -> Int {
        let string = self.components(separatedBy: " ")
        return string.count
    }
}
print(string.addCharacter(index: 5, character: "B"))
print(string.withReplacedCharacters())
print(string.removeWhiteSpace())
print(string.countNumberOfWords())
