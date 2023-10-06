import UIKit
import Foundation
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var numberO: Float = 3.14
var numberT: Float = 42.0
var numberSum: Double = Double(numberO + numberT)
print(numberSum)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */
var numberOne = 93
var numberTwo = 17
let numberDividing = numberOne / numberTwo
let numberRemainder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(numberDividing), the remainder is \(numberRemainder)")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
let qty = 13
let pricePerMac = 1000

var price = pricePerMac

if qty >= 5 && qty < 10 {
    price = 900
}
else if qty >= 10 {
    price = 850
}
let totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
let userInputAge: String? = "33a"
if let age = Int(userInputAge!) {
    print("Age is valid integer: \(age)")
} else {
    print("Age cannot be converted to an integer")
    let numString = userInputAge!.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
    print("Did you mean?", numString)
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let birthYear = 1994
let birthMonth = 6
let birthDay = 15

let currentDate = Date()
let calendar = Calendar.current
let components = calendar.dateComponents([.year, .month, .day],
                    from: DateComponents(calendar: calendar, year: birthYear, month: birthMonth, day: birthDay).date!,
                    to: currentDate)

let totalYearsFromBirth = components.year ?? 0
let totalMonthFromBirth = components.month ?? 0
let totalDaysFromBirth = components.day ?? 0

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")

///*
// Ex6:
// Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
// Use switch case to print("I was born in the ... quarter")
// */
var quarter = 0
switch birthMonth {
case 1...3:
    quarter = 1
case 4...6:
    quarter = 2
case 7...9:
    quarter = 3
case 10...12:
    quarter = 4
default:
    print("Invalid birth month")
}
if quarter != 0 {
    print("I was born in the \(quarter). quarter of the year")
}
    
