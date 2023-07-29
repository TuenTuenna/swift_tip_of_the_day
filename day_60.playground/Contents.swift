import UIKit

let myFriends : [String: Int] = ["철수" : 19, "수잔": 23, "제임스": 30]

for (name, age) in myFriends {
    print("이름: \(name), 나이: \(age)")
}

myFriends.forEach { (name: String, age: Int) in
    print("이름: \(name), 나이: \(age)")
}

myFriends.keys.forEach { name in
    print("이름: \(name)")
}

myFriends.values.forEach { age in
    print("나이: \(age)")
}



