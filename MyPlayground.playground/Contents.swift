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
