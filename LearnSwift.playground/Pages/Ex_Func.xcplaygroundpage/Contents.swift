//: [Previous](@previous)

import Foundation

// 함수란 ?
// - 코드의 일부를 한 덩어리를 잘라내어 그것에 이름을 붙이는 기능
// - (특정 작업을 수행하기 위해)(호출)할 수 있게 (이름) 붙여진 (코드 블록)


// 함수 선언과 사용 p.71
func sayHello(){
    print("hello")
}
sayHello()

//func rehi(_ cnt: Int)->{
//    for _ in 0..<cnt {
//        print("hello")
//    }
//}
//rehi(cnt:6)


// 지역 매개변수명과 외부 매개 변수명 p.73~74
// +함수 디폴드 매개변수 선언 p.74
func largerNumbers(num1 a: Int, num2 b: Int = 10) -> Int {
    if a == b{
        return 0
    }
    return a > b ? a:b
}

let c: Int = largerNumbers(num1: 6, num2: 6)
print(c)
print(largerNumbers(num1: 1))

// 여러 결과값 반환하기 p.77
// 평,세제곱 미터
func sizeConverter(_ length: Float) -> (yards: Float, cent: Float, meter: Float) {
    let yards = length * 0.027778
    let cent = length * 2.54
    let meter = length * 0.0254
    
    return (yards,cent,meter)
}
print(sizeConverter(10))
let lengthTuple = sizeConverter(20)

print(lengthTuple, lengthTuple.yards, lengthTuple.cent, lengthTuple.meter)

// 변수 내에 매개변수 변경
func calcArea(length: Float, width: Float) -> Float{
    var length = length
    length += width
    return length
}
let lengthInput: Float = 10
print(calcArea(length: lengthInput, width: 20))


//print("--입출력 매개변수 : 외부변수에 영향 p.78--")
//inout에 영향
func doubleValue(value: inout Int) -> Int{
    value += value
    return value
}

var myValue = 10

print(doubleValue(value: &myValue))

// 매개변수인 함수 p.78 이거 어렵네
print("-매개 변수 함수 p.78--")
func inchesToFeet(_ inches: Float) -> Float{
    return inches * 0.083333
}

func inchesToYards(_ inches: Float) -> Float{
    return inches * 0.027778
}

func outputConversion(_ converterFunc: (Float)-> Float, value: Float){
    let result = converterFunc(value)
    print("\(result)")
}

let toFeet = inchesToFeet
let toYards = inchesToYards

outputConversion(inchesToFeet, value: 10)
outputConversion(inchesToYards, value: 10)

//클로저(closure)와 클로저 표현식 p. 81
    // 클로저 표현식은 독립적인 코드 플록
//{(매개변수 이름: 매개변수 타입,...)-> 반환타입 in
// 클로저 표현식}

let sayHello3 = {print("Hello3")}
sayHello3()

// (Float) -> Float
let inchesToMeter = { (inches: Float) -> Float in inches * 0.0254
}

outputConversion( { (inches: Float)-> Float in inches}, value: 10)

// 약식 인수 이름 p.83
let join = { (str1: String, str2: String)-> String in
str1 + str2}

print(join("붙","여"))

//p.83 ~ 84
// 클로저를 컴퓨터 공학 용어에서는 함수나 클로저 표현식과 같은
//(독립적인 코드 블록)과 코드 블록(주변에 있는 하나 이상의 변수가 결합)된 것을 말함
//(+ 중첩 함수 Nested Functions) - 함수 안에 함수를 포함
func functionA() -> (()-> Int){
    var counter = 0
    func functionB() -> Int{
        return counter + 10
    }
}



