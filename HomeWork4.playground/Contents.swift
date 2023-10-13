import UIKit
import Foundation
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
var myTeam = "Boys"
var resultsOfGames: [String: [String]] = [
    "Brooklyn Nets" : ["99:89", "109:99"],
    "Dallas Mavericks" : ["87:93", "104:97"],
    "Washington Wizards" : ["117:112", "107:122"]
]
for (opponent, results) in resultsOfGames {
    for result in results {
        print("\(myTeam) against \(opponent) scored - \(result)")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let walletCash = [5, 10, 20, 50, 100, 200, 500]
func calculateTotalCash(in wallet: [Int]) -> Int {
    return wallet.reduce(0, +)
}
let totalCash = calculateTotalCash(in: walletCash)
print("The total cash in your wallet is \(totalCash) eur.")

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber (_ number: Int) -> Bool {
    return number % 2 == 0
}
let number1 = 4
let number2 = 7

let isNumber1Even = isEvenNumber(number1)
let isNumber2Even = isEvenNumber(number2)

isEvenNumber(9)
isEvenNumber(22)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from start: Int, to end: Int) -> [Int] {
    var result = [Int]()
    
    for number in start...end {
        result.append(number)
    }
    return result
}
var array = createArray(from: 1, to: 100)
print(array)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for number in array {
    if isEvenNumber(number) {
        if let indexOfNumber = array.firstIndex(of: number) {
            array.remove(at: indexOfNumber)
        }
    }
}
print(array)
