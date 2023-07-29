import UIKit

let myFriends = ["철수", "영희", "수잔", "제시카"]
let yourFriends = ["철수", "영희", "제니퍼", "존시나"]


let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

let totalFriends = myFriendsSet.union(yourFriends)
