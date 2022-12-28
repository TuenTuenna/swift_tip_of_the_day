import UIKit


// 프로토콜은 약속
// 뭔가를 강제
protocol Talking {
    var saying : String { get set }
    func sayHi()
}

class TalkingImplementation: Talking {
    var saying: String = " !토크!"
    
    func sayHi() {
        print("호롤롤로!")
    }
}

class BestTalk: Talking {
    var saying: String = "베스트 토크!"
    
    func sayHi() {
        print("허허 잘 지냈어?!?!")
    }
}

class OldTalk: Talking {
    var saying: String = "올드 토크!"
    func sayHi() {
        print("어이 올만이여~~")
    }
}

class Friend{
    
    var talkProvider: Talking
    
    var saying: String {
        get {
            talkProvider.saying
        }
    }
    
    init(_ talkProvider : Talking){
        self.talkProvider = talkProvider
    }
    
    func setTalkProvider(_ newProvider : Talking) {
        self.talkProvider = newProvider
    }
    
    func sayHi(){
        talkProvider.sayHi()
    }
}
 
let myBestFriend = Friend(BestTalk())

myBestFriend.sayHi()
myBestFriend.saying

let myOldFriend = Friend(OldTalk())

myOldFriend.sayHi()
myOldFriend.saying

myOldFriend.setTalkProvider(TalkingImplementation())

myOldFriend.sayHi()
myOldFriend.saying
