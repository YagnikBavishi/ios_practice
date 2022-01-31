import UIKit


//1.
var number1 = 100
var powerOfTwo = 1
for _  in 1...number1{
    powerOfTwo = 2 * powerOfTwo
    if(powerOfTwo > number1){
        break
    }
    print(powerOfTwo)
}

//2.
var number2 = 3
for _ in 1...number2{
    for _ in 1...number2{
        print("*" ,terminator: "")
    }
    print("")
}


//3.
var number3 = 3
var i = 1
var j = 1
for i in 1...number3{
    for _ in j...i{
        print("*", terminator: "")
    }
    print("")
}


//4.
var number4 = 5
i = 1
var counter = 0
while true{
    if(i % 2 != 0){
        for _ in stride(from: number4 * 2, to: i ,by: -1){
                print(" " , terminator: "")
        }
    }
    for _ in 1...i{
        if(i % 2 != 0){
            print("*", terminator: "")
        }
    }
    if(i % 2 != 0){
        print()
        counter = counter + 1
    }
    if(number4 == counter){
        break
    }
    i = i + 1
}

//5.

var numberCheck = 17
var flag : Bool = false
if numberCheck > 1{
    for i in 2...numberCheck/2{
        if numberCheck % i == 0{
            flag = true
            break
        }
    }
}
if flag == false{
    print("Prime Number")
}
else{
    print("Number is not Prime")
}

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)
