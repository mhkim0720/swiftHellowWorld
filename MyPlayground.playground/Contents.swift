import UIKit
import Foundation

var greeting = "Hello, playground"
greeting

//14 Chapter - Protocol (Class Interface Only)
//protocol
//class, struct
//protocol error
//protocol extension

protocol Singing{
    func sing()
}

class Bird : Singing{
    func sing(){
        print("Bird Sing")
    }
}

struct Cat : Singing{
    func sing(){
        print("Cat sing")
    }
}

extension Singing{
    func fly(){
        print("fly")
    }
}

let sparror = Bird()
sparror.sing()

let cat = Cat()
cat.fly()







/*
//13 Chapter - Closure
func testClosure(){
    print("Closure")
}

var fn = testClosure
fn()

func test(msg : String){
    
}
var fn2 = testClosure
fn2

var array = [1,4,2,5,3]
array.sorted(by : {(a : Int, b: Int) -> Bool in
    return a < b
})

let ret = array.sorted(by : {a,b in a < b})
print(ret)

//have to empty space
array.sorted{ (a, b) -> Bool in
    return a < b
}

//Tailing Closure API Declare
func add(_ i : Int, _ j : Int, _ handler : (Int) -> Void) {
    handler(i+j)
}
add(1,2) { (result) in
    print("1 + 2 = \(result)")
}
*/

/*
//12 Chapter - Structure And Enum
struct MyStruct{
    var value : Int
    
    //mutating
    mutating func increase(){
        print("increase")
        value += 1
    }
}

var obj2 = MyStruct(value: 100)
obj2.increase()
print(obj2)

var v1 = MyStruct(value: 300)
var v2 = v1
v1.value = 200
v2.value

class MyClass{
    var value = 0
    
    //error
    //weak var prop : MyStruct!
    
}

let c1 = MyClass()
let c2 = c1
c1.value = 100
c2.value

//enum
enum Day : Int{
    case am, pm
}
Day.am
Day.pm
let enum1 = Day.am
enum1.rawValue
let enum2 = Day(rawValue: 1)

//enum2
enum Day2 : Int{
    case am,pm
}
let e1 = Day2.am
let e2 = Day2.pm

switch e2{
case Day2.am : print("AM")
case Day2.pm : print("PM")
    
}

e1.rawValue
let e3 = Day2(rawValue: 1)
let e4 = Day2(rawValue: 2)
e4
*/

/*
//11 Chapter - Memory
class MyClass3{
    var y : YourClass!
    deinit{
        print("deinit")
    }
}
class YourClass{
    weak var m : MyClass3!
    deinit {
        print("deinit")
    }
}

var obj : MyClass3! = MyClass3()
var obj2 : YourClass! = YourClass()

obj.y = obj2
obj2.m = obj
obj = nil
obj2 = nil

print("==END")
*/

/*
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
 */

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
