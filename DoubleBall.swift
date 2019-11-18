import Foundation

var numbers: [UInt32] = []
var pool: [UInt32] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33]
let targetNum = arc4random_uniform(33)

var counter = 0


for _ in 1...7 {
    let index = arc4random_uniform(33)
    let redBall: UInt32 = pool[Int(index)]
    numbers.append(redBall)
}

print(numbers.sorted())
