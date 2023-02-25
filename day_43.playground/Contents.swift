import UIKit

struct Friend : Hashable {
    var name: String
    var age: Int
}

let myFriends = [
    Friend(name: "철수", age: 10),
    Friend(name: "영희", age: 20),
    Friend(name: "찰리", age: 20),
    Friend(name: "레이첼", age: 30),
    Friend(name: "수잔", age: 30)
]

let totalAge = myFriends.reduce(0) { partialResult, aFriend in
    return partialResult + aFriend.age
}

//[:]
let groupedFriends = myFriends.reduce(into: [:]) { partialResult, aFriend in
    return partialResult[aFriend.age] = myFriends.filter{ $0.age == aFriend.age }
}

groupedFriends
