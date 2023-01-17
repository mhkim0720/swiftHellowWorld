import UIKit
import Foundation

//var greeting = "Hello, playground"
//greeting

//19 Chapter - Foundation3, Timer, Notification, MultiThread

class MyThread : Thread{
    override func main() {
        for i in 0...10 {
            print("\(i)")
            
        }
    }
}
class MyOperation : Operation {
    override func main(){
        for i in 0...10 {
            print("\(i)")
            Thread.sleep(forTimeInterval: 0.01)
            
        }
    }
}

let queue = OperationQueue()
queue.maxConcurrentOperationCount = 3

let operation1 = MyOperation()
let operation2 = MyOperation()
let operation3 = MyOperation()
let operation4 = MyOperation()
let operation5 = MyOperation()

queue.addOperation {    operation1 }
queue.addOperation {    operation2 }
queue.addOperation {    operation3 }
queue.addOperation {    operation4 }
queue.addOperation {    operation5 }

queue.waitUntilAllOperationsAreFinished()





/*
//18 Chapter - Foundation2, File, Searialize, Custom Type Searialize

//File
let dirPath = "/Users/digisonic/desktop/mhkim/study"
let srcFilePath = "/Users/digisonic/desktop/mhkim/study/string.txt"
let destFilePath = "/Users/digisonic/desktop/mhkim/study/swift/string.txt"

let fm = FileManager.default

let files = try? fm.contentsOfDirectory(atPath: dirPath)
print("files : \(files)")

if !fm.fileExists(atPath: destFilePath){
    do{
        try fm.copyItem(atPath: srcFilePath, toPath: destFilePath)
        print("ok")
    }
    catch let error{
        print("error : \(error.localizedDescription)")
    }
}

//Searialization
let filePath2 = "/Users/digisonic/desktop/mhkim/study/data.dat"

class Person : NSObject, NSCoding{
    var name : String
    var birthYear : Int
    
    init(name : String, birthYear : Int){
        self.name = name
        self.birthYear = birthYear
    }
    
    func encode(with aCoder: NSCoder){
        aCoder.encode(name,forKey: "NAME")
        aCoder.encode(birthYear, forKey: "YEAR")
    }
    
    required init?(coder aDecoder: NSCoder){
        name = aDecoder.decodeObject(forKey: "NAME") as! String
        birthYear = aDecoder.decodeInteger(forKey: "YEAR")
    }
}

let person1 = Person(name: "aaa", birthYear: 1443)
NSKeyedArchiver.archiveRootObject(person1, toFile: filePath2)

let person2 = NSKeyedUnarchiver.unarchiveObject(withFile: filePath2) as! Person
print(person2.name + ",\(person2.birthYear)")
*/

/*
//17 Chapter - Foundation1, Selector, protocol, date

//selector
class TestClass : NSObject {
    func greeting(){
        print("Hello")
    }

    func sayHello(_ who : String){
        print("Hello \(who)")
    }
    
    func justDoIt(){
        //selector error
        //let sel = #selector(sayHello(_:))
        //self.perform(sel, with: "Swift")
    }
    
}

let obj = TestClass()
obj.justDoIt()
//selector error
//let sel1 = #selector( TestClass.greeting() )
//let obj = TestClass()
//obj.perform(sel1)

//protocol

//date, dateFormatter, calendar
let now = Date()
let yesterday = Date(timeIntervalSinceNow: (-60*60*24))

let formatter = DateFormatter()
formatter.timeStyle = .medium

let tm = formatter.string(from: now)
print(tm)

formatter.dateFormat = "yyyy/MM"

let tm2 = formatter.string(from: now)
print(tm2)

let calendar = Calendar.current
let week = calendar.component(Calendar.Component.weekOfYear, from:now)
print(week)
*/

/*
//16 Chapter - Any, Type Check(is,as), Generics
var anyVal : Any = 3
anyVal = "a"

if anyVal is String {
    print("String")
}

class Animal {}
class Dog : Animal {}
class Cat : Animal {}

let obj = Cat()

let obj1 = obj as Animal
if let obj2 = obj1 as? Cat{
    print("obj2 is Cat : \(obj2)")
}

//error
//let obj3 = obj1 as! Dog
*/


/*
//15 Chapter - Error do-catch
let str = "aaa"
let filepath = "filepath"

do{
    try str.write(toFile: filepath, atomically: true,  encoding: .utf8)
}
catch let error{
    print("Error : \(error.localizedDescription)")
}

enum CustomError : Error{
    case myFault, yourFault
}
do{
    throw CustomError.myFault
}
catch CustomError.myFault{
    print("myFault")
}
catch CustomError.yourFault{
    print("your Fault")
}

func inputPositive(num : Int) throws {
    guard num > 0 else{
        throw CustomError.yourFault
    }
}

do{
    try inputPositive(num: -10)
}
catch let error{
    
}

try? inputPositive(num: -10)

//error
//try! inputPositive(num: -10)
 */

/*
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

*/

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
