import UIKit

// 애완동물 관련 프로토콜
protocol PetHaving {
    // associatedtype 을 통해
    // 제네릭으로 어떠한 자료형이든 가질수 있다.
    associatedtype T
    // 애완동물 배열
    var pets: [T] { get set }
    // mutating 을 통해 스트럭트 에서 맴버 변수 값 변경
    mutating func gotNewPet(_ newPet: T)
}

// 익스텐션으로 프로토콜의 메소드 로직 구성 가능
extension PetHaving {
    mutating func gotNewPet(_ newPet: T){
        self.pets.append(newPet)
    }
}
// 동물 이넘
enum Animal {
    case cat, dog, bird
}

// 애완동물 프로토콜을 준수하는 친구 스트럭트
struct Friend : PetHaving {
    // 애완동물이 Animal
    var pets: [Animal] = []
}

// 애완동물 프로토콜을 준수하는 가족 스트럭트
struct Family : PetHaving {
    // 애완동물이 String
    var pets: [String] = []
}

var myFriend = Friend()

myFriend.gotNewPet(Animal.bird)
myFriend.gotNewPet(Animal.cat)
myFriend.gotNewPet(Animal.dog)
myFriend.pets

var myFamily = Family()
myFamily.gotNewPet("거북이")
myFamily.gotNewPet("토끼")
myFamily.gotNewPet("강아지")
myFamily.pets
