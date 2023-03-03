import UIKit

let myRange = 0...2 // 0, 1, 2
let mySecondRange = 0..<2 // 0, 1

let myFriendRange = 2...3 // 0, 1

let myFriends = ["철수", "영희", "제임스", "수잔"]

//let myThirdRange = 0...Int.max // 0, 1

for index in mySecondRange {
    print("index: \(index)")
}

myFriends[myFriendRange]

if mySecondRange.contains(2) {
    print("포함 O")
} else {
    print("포함 X")
}
