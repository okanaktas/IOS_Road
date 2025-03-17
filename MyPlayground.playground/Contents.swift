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

//----------------------
var exampleArray3 = ["Test6","Test4","Test612","Test3"]
print(exampleArray3.sorted())


//----Set
var setDizi : Set = [1,1,2,3,4,5,5]
print(setDizi)
//----- yada
let newDizi1 : Set = [1,2,3,4,5,5,5,6]
let newDizi2 : Set = [1,23,43,6456,75876,1,5,5]

let newDiziResult = newDizi1.union(newDizi2)
//----- set yerine diziyi birleştirmek isteseydim
let newArray = [1,2,312,312,31,23,4]
let newArray2 = [1,123,12,3123,2,2,4]

let newArrayResult = newArray + newArray2
print(newArrayResult)

//----Dictionary(kotlinde ki hashmap) key-value muhabbeti
let hop1 = ["Deneme" : "mi ki ?","Deneme2" : "mi ki2 ?"]
print(hop1["Deneme"]!)

let myDictionary = ["Run" : 100, "Swim" : 200, "Basketball" : 300]
print(myDictionary["Run"])


var myNumber = 0

while myNumber <= 10{
    print(myNumber)
    myNumber += 1
}


var yourNumbers = [10,20,30,40,50] 
var result = 0
for i in yourNumbers{
    result = i / 5
    print(result)
}

for i in 1...5{
    print(i)
}
