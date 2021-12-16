import UIKit

//-----------------------Using While Loop-----------------------

var loopNumber1 = 0
var loopNumber2 = 1
var loopFibNum = 0
var loopFibSeries: [Int] = []
var recursiveFibSeries: [Int] = []
while loopFibNum < 1000 {
    loopFibNum = loopNumber1 + loopNumber2
    loopNumber1 = loopNumber2
    loopNumber2 = loopFibNum
    if loopFibNum > 750 && loopFibNum < 1000 {
        loopFibSeries.append(loopFibNum)
    }
}
 print("Loop Result:", loopFibSeries)

//----------------------Using Recursive Func---------------------

func findFibNumber(number1: Int, number2: Int) {
    let fibnum = number1 + number2
    if fibnum > 750 && fibnum < 1000 {
        recursiveFibSeries.append(fibnum)
        print("Recursive Result:", recursiveFibSeries)
    }
    if fibnum < 1000 {
        findFibNumber(number1: number2, number2: fibnum)
    }
}

findFibNumber(number1: 0, number2: 1)
