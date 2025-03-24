import Cocoa

func printGreeting() {
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

func appendErrorCode(_ code: Int, toErrorString errorString: inout String) { // inout params cannot have default values
    if code == 400 {
        errorString += " bad request."
    }
}

appendErrorCode(400, toErrorString: &error)

print(error)
