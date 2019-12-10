import Foundation

var totalNumberInPool: UInt32 = 33
var redPool: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33]
var bulePool: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

var counter = 0

func redNumber() -> [Int] {
    var res: [Int] = []
    var pool = redPool
    var totalNumInPool = totalNumberInPool
    for i in 0...6 {
        let arrayIndex = Int(arc4random_uniform(totalNumInPool - UInt32(i)))
        res.append(pool[arrayIndex])
        pool.remove(at: arrayIndex)
    }
    print (res.sorted())
    return res.sorted()
}

func blueNumber() -> Int {
  return arc4random_uniform(bulePool(16))
}

for _ in 1...100 {
    redNumber()
}
