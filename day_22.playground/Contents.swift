import UIKit

// 이름
protocol Naming {
    var name: String { get set }
    func getName() -> String
}

// 나이
protocol Aging {
    var age: Int { get set }
}

// 이름, 나이 프로토콜을 상속하는 사용자 프로토콜
protocol UserNotifiable : Naming, Aging {
    
}

// 두 프로토콜을 동시에 준수해야한다.
// 프로토콜 = 약속
class MyBestFriend: UserNotifiable {
    
    var name: String = ""
    
    var age: Int
    
    func getName() -> String {
        return self.name
    }
    
    init(_ name: String, _ age: Int){
        self.name = name
        self.age = age
    }
    
}


struct MyFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        return self.name
    }
    
    var age: Int
    
}
