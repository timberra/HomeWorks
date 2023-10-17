import UIKit
import Foundation
/*
 Exercise 1.1
 
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 
 Than use switch case to calculate and return Int result

    var result = numberOne
       
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
 
    return result
 
 */
enum CalculationType {
    case addition
    case subtraction
    case multiplication
    case division
    
    func description() -> String {
        switch self {
        case .addition:
            return "Addition"
        case .subtraction:
            return "Subtraction"
        case .multiplication:
            return "Multiplitaion"
        case .division:
            return "Division"
        }
    }
}

func calculateResult(firstNumber numberOne: Int, andSecondNumber numberTwo: Int, withCalculationType calculationType: CalculationType) -> Int {
    var result = numberOne
    switch calculationType {
    case .addition:
        result += numberTwo
    case .subtraction:
        result -= numberTwo
    case .multiplication:
        result *= numberTwo
    case .division:
        if numberTwo != 0 {
            result /= numberTwo
        } else {
            print("Division by 0 is not allowed.")
        }
    }
 
    print("Result: \(calculationType.description()) \(numberOne) and \(numberTwo) = \(result)")
    
    return result
}


/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/
let numberOne = 20
let numberTwo = 5

let additionResult = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .addition)
let subtractionResult = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .subtraction)
let multiplicationResult = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .multiplication)
let divisionResult = calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: .division)


/*
Exercise 2

Create struct Car with elements
    name: String
    productionYear: Int
    horsPower: Int

 Create func getSpecs() print it with elements provided above
 */
struct Car {
    var name: String?
    var productionYear: Int?
    var horsepower: Int?
    
    func getSpecs() {
        print("\(name ?? ""), production year \(productionYear ?? 0) is with \(horsepower ?? 0) horsepower.")
    }
}
var carOne = Car(name: "MINI Cooper S Countryman", productionYear: 2023, horsepower: 189)
var carTwo = Car(name: "MINI Cooper S Countryman", productionYear: 2015, horsepower: 181)
carOne.getSpecs()
carTwo.getSpecs()
