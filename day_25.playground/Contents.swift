import UIKit

// typealias 별칭으로 내가 원하는 것을 다르게 부를수 있다.


protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

// 프로토콜 별칭 설정
typealias Friendable = Naming & Aging

typealias FullNaming = Naming

//struct Friend : Friendable {
//
//}

struct Friend : Friendable {
    
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}

typealias FriendName = String

var friendName : String = "정대리"

// 자료형, 클래스, 스트럭트, 클로저 등
// 모두 별칭 설정이 가능하다
typealias Friends = [Friend]

var myFriendsArray : Friends = []

typealias StringBlock = (String) -> Void

// 클로저를 StringBlock 이라는 별칭으로 설정하였다.
func sayHi(completion : StringBlock){
    print("안녕하세요?")
    completion("오늘도 빡코딩 하고 계신가요?")
}

sayHi(completion: { saying in
    print("여기서 받음 : ", saying)
})

typealias MyType = MyClass.MY_TYPE

class MyClass {
    enum MY_TYPE {
        case DOG
        case CAT
        case BIRD
    }
    var myType = MyType.DOG
}

var myClass = MyClass()

myClass.myType = MyType.DOG

print("myClass.myType:", myClass.myType)
