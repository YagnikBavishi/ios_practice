import UIKit

//1.
var array = [1,2,3,5,1]
if array[0] == array[array.count - 1]{
    print(true)
}
else{
    print(false)
}

//2.
var array2 = [1,2,3,4]
var size = (array2.count) * 2
var allZeroElement = Array(repeating: 0, count: size-1)
allZeroElement.append(array2[array2.count-1])
print(allZeroElement)

//3.

var array3 = [0,1,2,3]
var newArray:[Int] = []
if array3.count > 2{
    newArray.append(array3[0])
    newArray.append(array3[1])
    print(newArray)
}
else{
    print(array3[0])
}

//4.

var array4 = [0,50,100,20,80,150]
var maximumValue = array4.max()
print(maximumValue ?? <#default value#> as Any)

//5.
var array5 = [1,4,0,19]
print(array5.sort())

