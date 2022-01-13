import UIKit

//1.
var string = "Simform"
if string.count > 2{
    print(string.prefix(2))
}
else{
    print(string)
}

//2.
var string1 = "Simform"
if string1.count > 2{
    string1.removeFirst()
    string1.removeLast()
    print(string1)
}
else{
    print(string1)
}

//3.

var string3_1 = "Swift"
var string3_2 = "Example"

string3_1.removeFirst()
string3_2.removeFirst()
print(string3_1 + string3_2)


//4.
var string4 = "swift"
let firstChar = string4.removeFirst()
let secondChar = string4.removeFirst()
string4.insert(firstChar , at: string4.endIndex)
string4.insert(secondChar , at: string4.endIndex)
print(string4)

//5
var string5 = "Swift"
if string5.prefix(2) == "Sw"{
        print(true)
    }
else{
    print(false)
}

//6.
var string6 = "Simform Solution"
var firstThreeCharacter = string6.prefix(3)
var lastThreeCharacter = string6.suffix(3)
print(firstThreeCharacter + lastThreeCharacter)
