import UIKit

//-----------------------Using While Loop-----------------------

var loopNumber1 = 0 // 1st number variable defined for while loop
var loopNumber2 = 1 // 2st number variable defined for while loop
var loopFibNum = 0  // Fibonacci number variable defined for while loop
var loopFibSeries: [Int] = [] // Fibonacci number array variable defined for while loop
var recursiveFibSeries: [Int] = [] // Fibonacci number array variable defined for recursive function

while loopFibNum < 1000 { // Loop continues as long as loopFibNum is less than 1000
    loopFibNum = loopNumber1 + loopNumber2 // Fibonacci Number
    loopNumber1 = loopNumber2 // For the next step of the loop the 1st number takes the value of the 2nd number
    loopNumber2 = loopFibNum // Takes the value of the 2nd number Fibonacci number for the next step of the loop
    if loopFibNum > 750 && loopFibNum < 1000 { // If the loopFibNum is between 750 and 1000, the loopFibNum is added to the loopFibSeries
        loopFibSeries.append(loopFibNum)
    }
}
 print("Loop Result:", loopFibSeries)

//----------------------Using Recursive Func---------------------

func findFibNumber(number1: Int, number2: Int) { // Method to find Fibonacci numbers with 2 integer parameters
    let fibNumber = number1 + number2 // Fibonacci number
    if fibNumber > 750 && fibNumber < 1000 { // If the fibnum is between 750 and 1000, the fibnum is added to the recursiveFibSeries
        recursiveFibSeries.append(fibNumber)
        print("Recursive Result:", recursiveFibSeries)
    }
    if fibNumber < 1000 { // If the number is less than 1000, the findFibNumber method is called with the new parameter values.
        findFibNumber(number1: number2, number2: fibNumber) // For the next step the 1st number takes the value of the 2nd number and takes the value of the 2nd number Fibonacci number for the next step
    }
}

findFibNumber(number1: 0, number2: 1) // Method called
