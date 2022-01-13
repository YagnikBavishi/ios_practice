import UIKit

//3.
var number = 3
var i = 1
var j = 1
for i in 1...number{
    for _ in j...i{
        print("*", terminator: "")
    }
    print("")
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
