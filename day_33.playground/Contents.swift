import UIKit



let myFriends = [
    ["철수"],
    ["영희"],
    ["제임스", "본드"],
    ["스티브", "잡스"],
    ["개발하는", "정대리"]
]

let flatMapped = myFriends.flatMap { (item: [String]) in
    return item
}

print(flatMapped)

