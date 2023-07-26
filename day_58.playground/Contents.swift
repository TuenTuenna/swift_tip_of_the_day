import UIKit

let totalFriends = ["철수", "영희", "수잔", "제임스"]
let foreignFriends = ["수잔", "제임스"]
let koreanFriends = ["철수", "영희", "상철"]

let totalFriendsSet = Set(totalFriends)
let foreignFriendsSet = Set(foreignFriends)
let koreanFriendsSet = Set(koreanFriends)

// isSubset 내가 속해 있는지 체크
let isForeignFriendsIsInTotalFriends = foreignFriendsSet.isSubset(of: totalFriendsSet)

// isSuperset 내가 포함하고 있는지 체크
let isTotalFriendsHasForeignFriends = totalFriendsSet.isSuperset(of: foreignFriendsSet)

let isTotalFriendsHasKoreanFriends = totalFriendsSet.isSuperset(of: koreanFriendsSet)

let isKoreanFriendsIsInTotalFriends = koreanFriendsSet.isSubset(of: totalFriendsSet)
