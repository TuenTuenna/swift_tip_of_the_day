import UIKit

// 클래스의 경우
class Friend {
    var name : String
    
    func changeName(newName: String){
        self.name = newName
    }
    init(_ name: String){
        self.name = name
    }
}

var myFriend = Friend("쩡대리")

myFriend.changeName(newName: "개발하는 쩡대리")

myFriend.name

// 스트럭트의 경우
// 맴버 변수 name을 가지는 스트럭트
// struct 는 참조(메모리 주소)인 클래스와 다르기 때문에
// (클래스 vs 스트럭트 참조)
// struct 구조의 맴버 변수 값을 변경(mutate) 하기 위해서는
// mutating 키워드가 필요

// #짤막상식 mut - 라틴어 change
struct BestFriend {
    
    var name : String
    
    mutating func changeName(newName: String){
        self.name = newName
//        print("newName: ", newName)
    }
    
//    init(_ name: String){
//        self.name = name
//    }
}
var myBestFriend = BestFriend(name: "쩡대리")

myBestFriend.changeName(newName: "호롤롤로!")
