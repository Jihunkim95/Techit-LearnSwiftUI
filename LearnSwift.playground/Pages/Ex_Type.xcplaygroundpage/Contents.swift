// Chapter 5

import Foundation

let greeting = "Hello, playground"
var msg = ""

var x1 = 0, x2 = 1, x3 = 2

var b1, b2, b3: Int

// ;을 이용해서 여러 라인의 수행문을 한 라인으로 할 수 있음
let b = x1 + x2              ;print(b); print(x2)

// 진수 10진, 8진, 16진, 2진
let decInt = 10
let octInt = 0o12
let hexInt = 0xa
let binInt = 0b1010
print(decInt, octInt, hexInt, binInt)

//Any, AnyObject

// 튜플
let myTuple = (1,2,3, "abc")
print(myTuple)
(b1, b2, _) = (x1, x2, x3)
print(b1, b2)

// 타입별칭
typealias Sabun = Int
typealias Person = (name: String, age: Int, lv: Int)

let p1: Sabun = 10456
let p2: Person = ("홍길동", 18, 100)
print(p2.name, p2.age, p2.lv)

// 옵셔널
var index: Int?
if index == 0 {
    print("0")
}

if index == nil {
    print("nil")
}

// 옵셔널 바인딩
index = 100
if let cont = index {
    print(cont)
}

index = nil
if let index {
    print(index)
} else {
    print("index nil")
}

//if index {
//    print("??????")
//}

// 옵셔널 대체값
let index2 = index ?? 0
print(index2)

// 옵셔널 강제
//print(index!)  //error: Execution was interrupted, reason: EXC_BREAKPOINT (code=1, subcode=0x18c986650).

let pStr: String? = "hahaha"
let pStr2: String! = "hahaha"

let oStr: String = pStr!
let oStr2: String = pStr2
print(oStr, oStr2)

// guard p.62
enum DataError : Error{
    case nilError
}
index = 0
guard let i: Int = index else{
    // return
    // break
    // continue
    // throw
    throw DataError.nilError
}

//타입 캐스팅
// p.100 상속
class TestA{
    var name = ""
    init(name: String = "") {
        self.name = name
    }
}

//상속
class TestAA : TestA{
    var age = 0
    init(name:String, age: Int){
        self.age = age
        super.init(name: name)
    }
}

//// guard  p.62
//enum DataError : Error {
//    case nilError
//}
//index = 0
func multiplyByTen(value: Int?){
    guard let number = value, number < 10 else{
        print("Number is too high")
        return
    }
    let result = number * 10
    print(result)
}
multiplyByTen(value: 5)
multiplyByTen(value: 10)

// 타입 캐스팅
// p.100 상속
class Pet {
    var name = ""
    init(name: String) {
        self.name = name
    }
}

class Cat : Pet {
    var age = 0
    init(name: String, age: Int) {
        self.age = age
        super.init(name: name)
    }
}

class Dog : Pet {
    var speak = "멍"
    init(name: String, speak: String) {
        self.speak = speak
        super.init(name: name)
    }
}

let libary: [Pet] = [Cat(name: "냐옹이", age: 1), Dog(name: "돌이", speak: "스멍~")]
// 타입 확인 is를 사용 p.42
if libary[0] is Cat {
    
    print("is Cat")
}

// 다운캐스팅
for pet in libary {
    if let cat = pet as? Cat {
        print(cat.name, cat.age)
    }

    if let dog = pet as? Dog {
        print(dog.name, dog.speak)
    }
}

// if 구문 추가 표현식
print(x1)
let result = if x1 == 0{
    "x1 is 0"
}else{
    "x1 not 0"
}
print(result)

//switch 구문
let value = 4
switch (value){
case 0, 1, 2:
    print("zero, one, two")
    
case 4:
    print("three, four")
default:
    print("default")
}


// switch where 구문
let temp = 54
switch temp{
case 0...49 where temp % 2 == 0:
    print("Cold and even")
case 50...79 where temp % 3 == 0:
    print("Warm and even")

default:
    print("nothing")
}

// x값을 상수로한 매칭 switch
let number = 5 // 홀수 또는 짝수를 판단하고자 하는 숫자

switch number {
case let x where x % 2 == 0:
    print("\(number)는 짝수입니다.")
case let x where x % 2 != 0:
    print("\(number)는 홀수입니다.")
default:
    print("\(number)는 0입니다.")
}
// 튜플 매칭
//let tu = (_,1)
switch tu{
case (0,0):
    print("0, 0")
case (_,0):
    print("_, 0")
case (0,_):
    print("0, _")
case (-1...1,-1...1):
    print("-1...1,-1...1")
default:
    break
}
let tu = (2,0)
// 튜플을 이용한 값 바인딩
switch tu{
case (let x ,0):
    print(x,"0, 0")
case (_,let y):
    print(y,"_, 0")
    
case let (x,y):
    print(x,y)
default:
    break
}

