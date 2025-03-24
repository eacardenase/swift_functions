import Cocoa

//func printGreeting() {
//    print("Hello, playground.")
//}

//func printGreeting() -> Void {
//    print("Hello, playground.")
//}

func printGreeting() -> () {
    print("Hello, playground.")
}

printGreeting()

//func printPersonalGreeting(name: String) {
//    print("Hello, \(name). Welcome to your playground.")
//}
//
//printPersonalGreeting(name: "Edwin")

func printPersonalGreeting(to name: String) {
    print("Hello, \(name). Welcome to your playground.")
}

printPersonalGreeting(to: "Edwin")

//func divisionDescriptionFor(numerator: Double, denominator: Double) {
//    print("\(numerator) divided by \(denominator) is \(numerator / denominator)")
//}

//func divisionDescriptionFor(numerator: Double,
//                            denominator: Double,
//                            withPunctuation puntuation: String = ".") {
//    print("\(numerator) divided by \(denominator) is \(numerator / denominator)\(puntuation)")
//}

//divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")

func divisionDescriptionFor(numerator: Double,
                            denominator: Double,
                            withPunctuation puntation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) is \(numerator / denominator)\(puntation)"
}

print(divisionDescriptionFor(numerator: 9.0, denominator: 3.0))
print(divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))

var error = "The request failed:"

func appendErrorCode(_ code: Int, toErrorString errorString: inout String) -> Void { // inout params cannot have default values
    if code == 400 {
        errorString += " bad request."
    }
}

appendErrorCode(400, toErrorString: &error)

print(error)

10.isMultiple(of: 2) // everything is an object/struct? Like in Ruby?

func areaOfTriangleWith(base: Double, height: Double) -> Double {
//    let rectangle = base * height
    
    func divide() -> Double {
        let testVariable = "I'm just a normal string"
        
        return rectangle / 2 // rectange is still within scope
    }
    
    let rectangle = base * height // also works
    // print(testVariable) // is not in the same scope
    
    return divide()
}

print(areaOfTriangleWith(base: 3.0, height: 5.0))

@MainActor func printError() { // this is something interesting about scope
    print(error)
}

printError()

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)

print("The even numbers are: \(theSortedNumbers.evens)\nThe odd numbers are: \(theSortedNumbers.odds)")

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Edwin", "Alexander", "Cardenas"))

if let theName = middleName {
    print(theName)
}

let anotherMiddleName = grabMiddleName(fromFullName: ("Alice", nil, "Ward"))

if let theName = anotherMiddleName {
    print(theName)
}

//func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
//    guard let middleName = name.middle else {
//        print("Hey there!")
//        
//        return
//    }
//    
//    print("Hey, \(middleName)")
//}

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.count > 10 else {
        print("Hey there!")
        
        return
    }
    
    let middleInitial = middleName[middleName.startIndex]
    
    print("Hey, \(name.first) \(middleInitial). \(name.last)")
}

greetByMiddleName(fromFullName: (first: "Edwin", middle: "Alexander", last: "Cardenas"))
greetByMiddleName(fromFullName: ("Alice", nil, "Ward"))
greetByMiddleName(fromFullName: ("Alois", "Rumpelstiltskin", "Chaz"))

let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers

evenOddFunction([1, 2, 3])

func siftBeans(fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    
    for item in list {
//        if item.contains("beans") {
        if item.hasSuffix("beans") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    
    return (beans, otherGroceries)
}

let result = siftBeans(fromGroceryList: [
    "green beans",
    "milk",
    "black beans",
    "pinto beans",
    "apples"
])

result.beans == ["green beans", "black beans", "pinto beans"]
result.otherGroceries == ["milk", "apples"]
