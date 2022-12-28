import UIKit

class Friend {
    
    func sayHi() {
        print("안녕?!")
    }
    
    class func sayBye(){
        print("바이바이~!")
    }
    
    static func sayhoho(){
        print("호홓!!!")
    }
}

class BestFriend : Friend {
    
    class override func sayBye() {
        super.sayBye()
        print("덮어썼음~ 세이 바이")
    }
    
    func sayhoho(){
        print("덮어썼음~ sayhoho")
    }
    
}

let myFriend = Friend()
myFriend.sayHi()

Friend.sayBye()

Friend.sayhoho()

BestFriend.sayBye()

BestFriend.sayhoho()
