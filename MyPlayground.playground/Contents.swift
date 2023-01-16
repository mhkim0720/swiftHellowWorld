import UIKit

var greeting = "Hello, playground"
greeting

//5 Chapter
for i in 0..<10 {
    print(i)
}
for item in [1,2,3,4]{
    print (item)
    
    /*if item > 2 {
        break
    }*/
    
    guard item <= 2 else {
        break
    }
}

var i = 10
if(i > 10){
    print(i)
}

var someValue  = 3
switch someValue {
case 1 : print("1")
case 2 : print("2")
default : print("3")
}


//4 Chapter
//Tuple, Array, Dictionary, Set
let intArray : [Int] = [1,2,3]
let strArray : Array<String> = ["A", "B", "C"]

intArray.count
strArray.count

intArray[1]
strArray[2]

var intArray2 = [1,2]
intArray2.append(3)
intArray2.insert(4,at: 1)

intArray2.remove(at:1)
intArray2

var dic : [String:String] = ["1" : "jan", "2":"feb"]
var dic1 : Dictionary<Int, String> = [1:"one", 2: "two"]

dic["1"]
dic1[2]
dic["3"] = "Mar"

//1~3 Chapter
//Character, String

let str1 : String = "Swift"
let str2 = "1 + 2 = \(1+2)"

var str3 = "Hello"
str3 = str3 + " Swift"
str3.append(contentsOf: "!")

let intVal = 123
let strFromInt = String(intVal)

let intStr = "1234"
let intValFromStr = Int(intStr)

let num = Int("123a")

///*
let str : String = "Hello Swift"

str.count

str.startIndex
str.endIndex

let index3 = str.index(str.startIndex,offsetBy: 3)
let index7 = str.index(str.endIndex, offsetBy: -4)

let subStr = str[index3...index7]
//*/
