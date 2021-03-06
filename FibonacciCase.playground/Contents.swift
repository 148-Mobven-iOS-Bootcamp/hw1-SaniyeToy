import UIKit

//-----------------------Using While Loop-----------------------

var loopNumber1 = 0
var loopNumber2 = 1
var loopFibNum = 0
var loopFibSeries: [Int] = []
var recursiveFibSeries: [Int] = []

while loopFibNum < 1000 {
    loopFibNum = loopNumber1 + loopNumber2
    loopNumber1 = loopNumber2 // For the next step of the loop the 1st number takes the value of the 2nd number
    loopNumber2 = loopFibNum // Takes the value of the 2nd number Fibonacci number for the next step of the loop
    if loopFibNum > 750 && loopFibNum < 1000 {
        loopFibSeries.append(loopFibNum)
    }
}
 print("Loop Result:", loopFibSeries)

//----------------------Using Recursive Func---------------------

func findFibNumber(number1: Int, number2: Int) {
    let fibNumber = number1 + number2
    if fibNumber > 750 && fibNumber < 1000 {
        recursiveFibSeries.append(fibNumber)
        print("Recursive Result:", recursiveFibSeries)
    }
    if fibNumber < 1000 { // If the number is less than 1000, the findFibNumber method is called with the new parameter values.
        findFibNumber(number1: number2, number2: fibNumber) // For the next step the 1st number takes the value of the 2nd number and takes the value of the 2nd number Fibonacci number for the next step
    }
}

findFibNumber(number1: 0, number2: 1) // Method called

