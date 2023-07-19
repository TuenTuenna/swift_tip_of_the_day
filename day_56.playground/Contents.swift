import UIKit
import Foundation

struct MyPet {
    enum Kind {
        case cat
        case dog
        var value: String {
            switch self {
            case .cat:
                return "고양이"
            case .dog:
                return "강아지"
            }
        }
        var name: String {
            switch self {
            case .cat:
                return "개냥이"
            case .dog:
                return "해피"
            }
        }
    }// Kind enum
    let kind: Kind
    var description: String {
        return "우리집 \(kind.value) \(kind.name)"
    }
}

let myCat = MyPet(kind: .cat)
print(myCat.description)

if myCat.kind == MyPet.Kind.cat {
    print("고양이 입니다")
}

let myDog = MyPet(kind: .dog)
print(myDog.description)
