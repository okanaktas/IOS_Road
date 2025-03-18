import UIKit

var myValue = "asfadsg"

var myNewValue = (Int(myValue) ?? 0) * 5

print(myNewValue)

if let myLastValue = Int(myValue){
    print(myLastValue * 5)
}else{
    print("Wrong Value")
}
