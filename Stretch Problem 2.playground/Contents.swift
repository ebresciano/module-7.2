//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func getNumber(x: Int, y: Int) {
    for number in 0...y {
        if number % x == 0 {
           print (number)
        }
    }
}

getNumber(3, y: 30)