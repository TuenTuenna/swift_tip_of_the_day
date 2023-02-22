import UIKit



// 추가 생성자
class Friend{
    var name: String
    var age: Int
    init(name: String){
        self.name = name
        self.age = 10
    }
    convenience init(name: String, age: Int) {
        self.init(name: name)
        self.age = age
    }
}

let myFriend = Friend(name :"쩡대리", age: 100)
myFriend.age
