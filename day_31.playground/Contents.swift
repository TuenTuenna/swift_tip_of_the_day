import UIKit

let friendsArray : [String] = ["철수","영희","수잔","제임스","마크"]

let myFriends = friendsArray.map { aFriend in
    return "내 친구다 ->" + aFriend
}

let numbers : [Int] = [22, 33, 44, 55]

//let myNumbers : [String] = numbers.map { aNumber in
//    return "내 숫자 : \(aNumber)"
//}

let myNumbers : [String] = numbers.map {
    return "내 숫자 : \($0)"
}

let myPetDictionary = ["고양이" : "야옹", "강아지" : "멍멍", "송아지" : "음애"]

let myPets : [String] = myPetDictionary.map { (animal: String, cry: String) in
    return "\(animal)의 울음소리는 \(cry) 이다"
}

let numberSet : Set<Int> = [1,1,1, 2,3,4,4,4,5]

let myFavoriteNumbers : [Int] = numberSet.map { aNumber in
    return aNumber * 10
}

