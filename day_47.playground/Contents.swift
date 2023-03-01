import UIKit

//let friends = ["영희", "철수", "존슨", "제임스"]
//let pets = ["야옹이", "댕댕이", "찍찍이"]
//
//let friendAndPetPairs = zip(friends, pets)
//
//
//for aPair in friendAndPetPairs {
//    print("\(aPair.0), \(aPair.1)")
//}

let friends = ["영희", "철수", "존슨", "제임스"]
//let numbers = (1...Int.max)
let numbers = (1...2)

let friendAndPetPairs = zip(friends, numbers)

for aPair in friendAndPetPairs {
    print("\(aPair.0), \(aPair.1)")
}

let myArray = Array(friendAndPetPairs)













//
//zipped.forEach { zippedItem in
//    print("zippedItem : \(zippedItem)")
//}
//
//let zippedArray = Array(zipped)
