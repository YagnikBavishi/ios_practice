import UIKit
//
////1.Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
////Input: [1,2,3,1]
////Output: true
//var array = [1,2,3,5,1]
//if array[0] == array[array.count - 1]{
//    print(true)
//}
//else{
//    print(false)
//}
//
//
//// 2. Write a Swift program to create a new array with double the lenght of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
////Input: [1,2,3,4]
////Output: [0,0,0,0,0,0,0,4]
//
//var array2 = [1,2,3,4]
//var size = (array2.count) * 2
//var allZeroElement = Array(repeating: 0, count: size-1)
//allZeroElement.append(array2[array2.count-1])
//print(allZeroElement)
//
//
//
////3.Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
////Input: [0,1,2,3]
////Output: [0,1]
//
//var array3 = [0,1,2,3]
//var newArray:[Int] = []
//if array3.count > 2{
//    newArray.append(array3[0])
//    newArray.append(array3[1])
//    print(newArray)
//}
//else{
//    print(array3[0])
//}
//
////4.Write a Swift program to take one array and find out maximum number from that array
//
////Input: [0,50,100,20,80,150]
////Output: 150
//var array4 = [0,50,100,20,80,150]
//var maximumValue = array4.max()
//if let maximumValue = maximumValue{
//    print(maximumValue)
//}
//
//
////5.Write a Swift program to take one array and sort it in descending order.
////Input: [0,5,6,2,10]
////Output: [10,6,5,2,0]
//
//var array5 = [0,5,6,2,10]
//let reversed = Array(array5.sorted().reversed())
//print(reversed)
//
////6.Print all the numbers from listOfNumbers that are divisible by at least one number from divisors
////Input: var listOfNumbers = [1, 2, 3, 10, 100]
////var divisors = [2, 5]
////Output: 2,10,100
//var listOfNumbers = [1, 2, 3, 10, 100]
//var divisors = [2, 5]
//var answer = Set<Int>()
//for i in 0...listOfNumbers.count - 1{
//    for j in 0...divisors.count - 1{
//        if listOfNumbers[i] % divisors[j] == 0{
//            answer.insert(listOfNumbers[i])
//        }
//    }
//}
//for i in answer{
//    print(i)
//}

//array
var array1: [Int] = []
var array = ["Yagnik","jay"]
print(array)
print(array[0])
array[0] = "meet"
print(array)
if array.isEmpty {
    print("The array is empty.")
} else {
    print("The array isn't empty.")
}
array.insert("Yagnik", at: 0)
print(array)
print(array.removeLast())
print()


//set
var set1 = Set<String>()
print(set1)
set1.insert("Yagnik")
print(set1)

var set : Set = ["Yagnik","Jay"]
print(set)
set.insert("Meet")
print(set)
let integer1:Set = [1,2,4,6,3]
let integer2:Set = [2,7,9,3,1,4,6]
print(integer1.union(integer2))
print(integer1.intersection(integer2))
print(integer1.subtracting(integer2))
print(integer1.symmetricDifference(integer2))
integer1.isSubset(of: integer2)
integer2.isSuperset(of: integer1)
integer1.isDisjoint(with: integer2)

//Dictionary
var dict: [Int: String] = [:]
print(dict)
dict[1] = "One"
print(dict)
var integer = [1:"One" , 2:"Two", 3:"Three"]
print(integer)
integer.updateValue("Four", forKey: 3)
print(integer)
print(integer.keys)
print(integer.values)
