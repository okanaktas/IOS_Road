import UIKit

var greeting = "Hello, playground"


//Deneme

var exampleNumber = 5
print(exampleNumber)

var userName = "Okan"
var userSurname = "Aktas"

print("isminiz ve soyisminiz: \(userName) \(userSurname)")

userName.append("Mı?")
userName.lowercased()
userName.uppercased()
//----------------------------------------

var myArray = ["Bugra", "Okan", "Aktas"]

print(myArray)

for i in myArray{
    print(i)
}

myArray.forEach { item in
    print("Dizi icerigi: " + item)
}

print("Dizinin elemanları:", terminator: " ")
for j in myArray {
    print(j, terminator: " ")
}

//------------------
var exampleArray = ["merhaba",2,"Deneme",4] as [Any]
//any olarak tanımlamanın dezavantajı fonksiyonları kullanamam mesela:
//exampleArray[0].uppercased() çalışmaz ama dizi içerisinde sadece stringler olsa ver as yani casting yapmasaydık o zaman çalışacaktı

var exampleArray2 = ["merhaba","dunya","Deneme","eatrh"]
print(exampleArray2[0].uppercased())

print("Dizinin son elamanı: \(exampleArray2.last!)")
//ya da
print("Dizinin son elamanı: ")
let lastElement = exampleArray2[exampleArray2.count - 1]
print(lastElement)
print("Dizinin son elamanı: \(exampleArray2.count - 1)") //bu yanlış
