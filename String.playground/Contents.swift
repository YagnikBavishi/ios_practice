import UIKit

//1. Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
//Input: “Simform”
//Output: “Si”
var string = "Simform"
if string.count > 2{
    print(string.prefix(2))
}
else{
    print(string)
}


//2.Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.
//Input: “Simform”
//Output: imf

var string1 = "Simform"
if string1.count > 2{
    string1.removeFirst()
    string1.removeLast()
    print(string1)
}
else{
    print(string1)
}


//3.Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.

var string3_1 = "Swift"
var string3_2 = "Example"
string3_1.removeFirst()
string3_2.removeFirst()
print(string3_1 + string3_2)


//4.Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
//Input: Swift
//Output: iftSw
var string4 = "swift"
let firstChar = string4.removeFirst()
let secondChar = string4.removeFirst()
string4.insert(firstChar , at: string4.endIndex)
string4.insert(secondChar , at: string4.endIndex)
print(string4)


//5.
//Write a Swift program to test if a given string starts with "Sw".
//Input: Swift
//Output: true
var string5 = "Swift"
if string5.prefix(2) == "Sw"{
        print(true)
    }
else{
    print(false)
}

//6. Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
//Input: “Simform Solutions”, 3
//Output: Simons

var string6 = "Simform Solution"
var firstThreeCharacter = string6.prefix(3)
var lastThreeCharacter = string6.suffix(3)
print(firstThreeCharacter + lastThreeCharacter)

//7.
var name = "Yagnik"
var message = "Welcome , \(name)!"
print(message)
name = "Yagnik Bavishi"
let firstSpace = name.firstIndex(of: " ") ?? name.endIndex
let firstName = name[..<firstSpace]
print(firstName)
print(Array(name))
print(strlen(name))
let counter = "a"
print(counter.count)
let empty = " "
print(empty)
let emptyString = String()
if let i = name.firstIndex(of: "a") {
    name.remove(at: i)
}
print(name)
name.removeLast()
print(name)
print(name.uppercased())
print(name.prefix(5))
print(name.suffix(6))
print(name.sorted())
