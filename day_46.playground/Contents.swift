import UIKit

struct Pet : Equatable{
    let id: String
    let name: String
    
    static func == (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.id == rhs.id
    }
    static func != (lhs: Pet, rhs: Pet) -> Bool {
        return lhs.id != rhs.id
    }
}

let myPet1 = Pet(id: "01", name: "고양이")
let myPet2 = Pet(id: "02", name: "댕댕이")
let myPet3 = Pet(id: "01", name: "개냥이")

//if myPet1.id == myPet3.id {
//    print("두 팻은 같다")
//}

if myPet1 == myPet3 {
    print("두 팻은 같다")
}

if myPet1 != myPet2 {
    print("두 팻은 같지 않다")
}





//if myPet1.id == myPet3.id {
//    print("두 팻은 같다")
//}
