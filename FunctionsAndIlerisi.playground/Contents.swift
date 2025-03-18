import UIKit

func myfunction(){
    print("Hello World!")
}

print("Bakalım hangisi önce çalışacak")

myfunction( )

//Input & Output 6 Return

func sumFunction(x: Int, y: Int) -> Int{
    return x + y
}

print(sumFunction(x: 5, y: 6))


func booleanFunc(a: Int, b : Int) -> Bool{
    if a > b{
        return true
    }else{
        return false
    }
}

print(booleanFunc(a: 5, b: 6))
