import UIKit


final class Friend {
    
    var name : String
    
    init(name: String){
        self.name = name
    }
}

class BestFriend : Friend {
    
    override init(name: String){
        super.init(name: "베프 " + name)
    }
}

let myFriend = Friend(name: "쩡대리")
let myBestFriend = BestFriend(name: "철수")
