//: [Previous](@previous)

import Foundation

//Pass function to another function
func addition(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

func multiply(number1: Int, number2: Int) -> Int {
    return number1 * number2
}

func doOprations(oprations:(_ value1: Int, _ value2: Int) -> Int, number1:Int, number2:Int) -> Int {
    return oprations(number1, number2)
}

print(doOprations(oprations: addition, number1: 10, number2: 20))
print(doOprations(oprations: multiply, number1: 10, number2: 20))
print()

//Return function from another function
func doOprations(isMutliply: Bool) -> (Int, Int) -> Int {
    func addition(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
    
    func multiply(number1: Int, number2: Int) -> Int {
        return number1 * number2
    }
    
    return isMutliply ? multiply : addition
}

let oprations = doOprations(isMutliply: true)
let oprations1 = doOprations(isMutliply: false)
print(oprations(10, 2))
print(oprations1(10, 3))
print()

//map
let array = [1, 2, 3, 4, 5]
let newMultipyArray = array.map{
    $0 * 10
}
print(newMultipyArray.map( { (someInt: Int) -> Int in return someInt * 10 } ))
print(newMultipyArray.map( { (someInt: Int) in return someInt * 10 } ))
print(newMultipyArray.map { (someInt: Int) -> Int in return someInt * 10 } )
print()


// map in dictionary
let dictonary = ["yagnik": 10, "jay": 20]
let returnKeyWithUppercase = dictonary.map{ (key, value) in
    return key.uppercased()
}
print()

//map in set
let set: Set = [1, 2, 3, 4, 5]
let doubleValueofSet = set.map{index in index * 2}
print(doubleValueofSet)
print()

//filter in array
let arrayFilter = [1, 2, 4, 7, 8, 10]
print(arrayFilter.filter({ someInt in
    someInt % 2 == 0
}))
print()

//filter in dictonary
let dictonaryFilter = ["Yagnik": 10 , "Jay": 20]
let filterValue = dictonaryFilter.filter({(key, value) in
    value > 10
})
print(filterValue)
print()

//filter in set
let setFilter: Set = [1, 2, 3, 4, 5]
let setFilterValue = setFilter.filter{$0 > 2}
print(setFilterValue)
print()

//Reduce in array
let arrayReduce = [1, 2, 4, 5, 6]
let sum = arrayReduce.reduce(1, { value1 , value2 in
    value1 + value2
})
print(sum)

// reduce in set
let reduceSet: Set = [2, 3, 4, 5]
let reduceSetSum = reduceSet.reduce(0,{ value1 , value2 in
    value1 + value2
})
print(reduceSetSum)
print()

//reduce in dictionary
let reduceDictionary = ["Yagnik": 10, "Jay": 20]
let reduceDictionaryValue = reduceDictionary.reduce(10) {
    (key, value) in
    return key * value.value
}
print(reduceDictionaryValue)
print()

//FlatMap in array
let stringArray = ["abc", "adef", "ghi"]
let capitalStringArray = stringArray.flatMap{$0.uppercased()}
print(capitalStringArray)

//FlatMap in dictonary
let dictArray = [["key1": "value1", "key12": "value2", "key3": "value3"]]
let flatMapDict = dictArray.flatMap({$0})
print(flatMapDict)
print()

//Flatmap in set
let setArray: Set = [Set([1, 2, 3]), Set([2, 3, 4])]
let flatmapSet = setArray.flatMap({ $0 })
print(flatmapSet)
print()

//FlatMap for removing optionals
let optionalArray: [Int?] = [1, 2, nil, 5, 6, nil]
let removeNil = optionalArray.compactMap({ $0 })
print(removeNil)
print()

//Chaining Methods
let arrayOfArray = [[1, 2, 3, 4], [5, 6, 7, 8, 4]]
let sumofSquaresofEvenNumber = arrayOfArray.flatMap{$0}.filter{ $0 % 2 == 0}.map{ $0 * $0 }
print(sumofSquaresofEvenNumber)
print()
