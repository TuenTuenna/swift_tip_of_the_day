import UIKit


enum FriendType {
    case normal, best
}

struct Friend {
    var name : String
    var type : FriendType
}

var friendList = [
    Friend(name: "철수", type: .normal),
    Friend(name: "영희", type: .best),
    Friend(name: "제임스", type: .best),
    Friend(name: "수잔", type: .normal)
]

//let groupedFriends = Dictionary(grouping: friendList, by: { $0.type })

let groupedFriends = Dictionary(grouping: friendList, by: { (friend) -> FriendType in
    return friend.type
})

print(groupedFriends)

groupedFriends[.normal]
groupedFriends[.best]

