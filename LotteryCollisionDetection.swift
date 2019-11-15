//
//  LotterCollisionDetection.swift
//  
//
//  Created by Jerry on 11/15/19.
//

import Foundation

var excludeArr: [Int] = [0000000, 9999999]
var counter = 0

let targetNum = Int(arc4random_uniform(9999999))

func getRandomNumber() -> Int {
    let randomNum = arc4random_uniform(9999999)
    return Int(randomNum)
}

func collisionDetection(targetNum: Int, randomNumber: Int) -> Bool {
    if targetNum == randomNumber {
        print("Find it:\(targetNum)")
        return true
    } else {
        print("Did not find it! The random number is:\(randomNumber), and the target number is: \(targetNum)")
        return false
    }
}

repeat {
    collisionDetection(targetNum: targetNum, randomNumber: getRandomNumber())
} while true

