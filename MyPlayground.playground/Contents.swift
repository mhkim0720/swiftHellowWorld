import UIKit

var greeting = "Hello, playground"
greeting

//10 Chapter - Inheritance
class Parent{
    var value : Int
    
    init(){
        value = 0
    }
    
    convenience init(a : Int){
        self.init()
    }
    
    func sayHello(){
        print("hello")
    }
}

class Child : Parent{
    var value2 : Int
    init(v: Int){
        self.value2 = v
        super.init()
    }
    
    override init() {
        value2 = 0
        super.init()
    }
    
    override func sayHello() {
        print("Hello Swift")
    }
}

let obj = Child(v: 10)
obj.value
obj.sayHello()

let obj2 = Child(a: 100)






/*
//9 Chapter - Object Initializer
class MyClass2{
    var value : Int
    var value2 : String
    
    convenience init(){
        self.init(v1: 0, v2 :"Hello")
    }
    
    init(v1 : Int, v2 : String){
        self.value = v1
        self.value2 = v2
    }
    
    //failable Initializer
    init?(v1 : Int){
        if v1 < 0 {
            return nil
        }
        self.value = v1
        self.value2 = "AA"
    }
}

let obj = MyClass2()
let obj2 = MyClass2(v1 : 10, v2 : "Hello")
let obj3 = MyClass2(v1 : -10)
obj3
*/

/*
//8 Chapter - Class
//class declaration
//object
//property
//method
//computed property

class MyClass{
    var value1 : Int = 0
    var value2 : String?
    var value3 : Int{
        return 100;
    }
    
    func say1(){
        print("say1 func \(value1)")
    }
    static func say2(){
        print("say2 static func ")
    }
}

let obj = MyClass()
obj.value1 = 10
let str = obj.value2
MyClass.say2()

obj.say1()
*/

/*
//7 Chapter - Function
func func1()-> Bool{
    print("7 Chapter Function")
    return true
}

func1()

//parameter, internal parameter name
func sayHello(person : String){
    print("Hello \(person)")
}
sayHello(person: "Friend")

func sayHello2(who person : String){
    print("Hello \(person)")
}
sayHello2(who: "Friend")

func sayHello3(_ person : String){
    print("Hello \(person)")
}
sayHello3("Friend")

// optional
func sayHello4(person : String?){
    guard let str = person else {
        print("Hello")
        return
    }
    print("Hello \(str)")
}
sayHello4(person: nil)

*/

/*
//6 Chapter
// nil and Optional

//nil, optional type
let intVal3 : Int? = nil
let intVal4 = Int("123")

//using optional type

//optional binding
if let intVal5 = intVal3{
    print(intVal5)
}

//optional chain
var str5 : String? = "ABC"
let ret1 = str5?.lowercased()
print(ret1)

//forced unwrapping
let ret2 = str5!.lowercased()
print(ret2)

str5 = nil
let ret3 = str5?.lowercased()
print(ret3)

//forced unwrapping -> error
//let ret4 = str5!.lowercased()

// IUO ! auto unwrapping
var str3 : String! = "ABC"
str3.append("!!!")
str3 = nil
//error
//str3.append(contentsOf: "!!!")
*/


/*
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
 */

/*
let str : String = "Hello Swift"

str.count

str.startIndex
str.endIndex

let index3 = str.index(str.startIndex,offsetBy: 3)
let index7 = str.index(str.endIndex, offsetBy: -4)

let subStr = str[index3...index7]
*/
