//
//  main.swift
//  Lesson2_hw
//
//  Created by Владимир on 09.04.2021.
//

import Foundation

//--------------task 1

func checkEven(_ number: Int) -> String{
    var result: String
    if(number % 2 == 0){
        result = "да"
        return result
    }else{
        result = "нет"
        return result
    }
}
print(checkEven(10))

//--------------task 2

func checkDivisionByThree(_ number: Int) -> String{
    var result: String
    if(number % 3 == 0){
        result = "да"
        return result
    }else{
        result = "нет"
        return result
    }
}
print(checkDivisionByThree(8))

//--------------task 3

var arrayRandom: [Int] = []
var y: Int = 1
while y <= 100 {
    arrayRandom.append(Int.random(in: 1...1000))
    y += 1
}
arrayRandom.sort()

print(arrayRandom)

//---------------task 4

var arrayNew: [Int] = []

for (_, arrayValue) in arrayRandom.enumerated() {
    if checkEven(arrayValue) == "нет" && checkDivisionByThree(arrayValue) == "нет" {
        arrayNew.append(arrayValue)
    }
}

arrayRandom = arrayNew

print(arrayRandom)
