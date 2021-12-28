import UIKit

struct Pet {
    init(){
        print("Pet 이 생성되었다.")
    }
}

struct Friend {
    
    var name: String
    // lazy 키워드로 바로 메모리에 올리지 않고 사용하는 시점에 메모리에 올려서 사용합니다.
    lazy var pet : Pet = Pet()
    
    init(_ name: String){
        self.name = name
        print("Friend 가 생성됨")
    }
}

var myFriend = Friend("쩡대리")

// 접근했을때 Pet이 생성되서 메모리에 올라가는 걸 볼 수 있습니다.
myFriend.pet


