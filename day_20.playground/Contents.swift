import UIKit

// struct 에서도 메소드를 가질수 있습니다.
struct Friend {
    
    var age : Int
    
    var name : String
    
    func sayHello() -> String {
        print("sayHello()")
        return "저는 \(age)살, \(name) 입니다."
    }
}

var myFriend = Friend(age: 10, name: "쩡대리")

myFriend.sayHello()
