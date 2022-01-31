//: [Previous](@previous)

import Foundation
import Security

//1.You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var result = String()
for i in encodedMessage{
    if i == " "{
        result = result + String(i)
    }
    for (key,value) in code{
        if(String(i) == value){
            result = result + key
        }
    }
}
print(result)

//2.You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary
var people: [[String:String]] = [
[
    "firstName": "Calvin",
    "lastName": "Newton"
    ],
    [
    "firstName": "Garry",
    "lastName": "Mckenzie"
    ],
    [
    "firstName": "Leah",
    "lastName": "Rivera"
    ],
    [
    "firstName": "Sonja",
    "lastName": "Moreno"
    ],
    [
    "firstName": "Noel",
    "lastName": "Bowen"
    ]
]
var firstName = [String]()
for dictonary in people{
    if let name = dictonary["firstName"]{
        firstName = firstName + [name]
    }
}
print(firstName)

//3.You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.
var fullName = [String]()
for dictonary in people{
    if let firstname = dictonary["firstName"]{
        if let lastName = dictonary["lastName"]{
        fullName = fullName + ["\(firstname) \(lastName)"]
        }
    }
}
print(fullName)


//4.You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.
var people4: [[String:String]] = [
[
    "firstName": "Calvin",
    "lastName": "Newton",
    "score": "13"
    ],
    [
    "firstName": "Garry",
    "lastName": "Mckenzie",
    "score": "12"
    ],
    [
    "firstName": "Leah",
    "lastName": "Rivera",
    "score": "10"
    ],
    [
    "firstName": "Sonja",
    "lastName": "Moreno",
    "score": "3"
    ],
    [
    "firstName": "Noel",
    "lastName": "Bowen",
    "score": "16"
    ]
]

var value = [Int]()
for person in people4 {
    if let scores = person["score"] {
    value = value + [Int(scores)!]
    }
}
var lowValue = value.firstIndex(of: value.min()!)
if let firstnameLowScore = people4[lowValue!]["firstName"]{
    print(firstnameLowScore ,terminator: " ")
}
if let lastnameLowScore = people4[lowValue!]["lastName"]{
    print(lastnameLowScore)
}


//5.You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:

var sortedValue = Array(value.sorted().reversed())
for var(i) in 0...sortedValue.count-1{
    let dictIndex = value.firstIndex(of: sortedValue[i])
    if let firstnameLowScore = people4[dictIndex!]["firstName"]{
        i = i + 1
        print(i,".",firstnameLowScore ,terminator: " ")
    }
    if let lastnameLowScore = people4[dictIndex!]["lastName"]{
        print(lastnameLowScore,terminator: " ")
    }
    if let scoreLow = people4[dictIndex!]["score"]{
        print("-",scoreLow)
    }
}



//6.You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var output: [Int: Int] = [:]
var frequncy: [Int : Int] = [:]
numbers.sort()
var compare = numbers[0]
var counter = 0
for index in numbers{
    if index == compare{
        counter = counter + 1
        output[index] = counter
    }
    else{
        compare = index
        counter = 1
        output[index] = counter
    }
}
var sortedKeys = Array(output.keys).sorted()
let keys = output.keys.sorted()
for key in keys{
    if let value = output[key]{
        print("\(key): \(value)")
    }
}

