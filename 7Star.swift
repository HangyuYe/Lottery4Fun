//
//  LotterCollisionDetection.swift
//
//
//  Created by Jerry on 11/15/19.
//

import Foundation

let targetNum = arc4random_uniform(99)

var counter = 0

func impactTarget () -> Bool {
    var myNum = arc4random_uniform(99)
    if myNum == targetNum {
        print("Using \(counter) times to find the random number \(targetNum)!")
        return true
    } else {
        print("Number \(myNum) is not the target number: \(targetNum), Round: \(counter)")
        myNum = arc4random_uniform(99)
        return false
    }
}

while impactTarget() == false {
    counter += 1
}
