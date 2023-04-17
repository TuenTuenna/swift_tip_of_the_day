import UIKit

protocol Naming{
    var name: String { get set }
}

class Cat : Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog : Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

//extension Naming  {
//
//}

extension Naming {
    func sayName() where Self : Dog {
        print("\(self.name) 멍멍!")
    }
    func sayName() where Self : Cat {
        print("\(self.name) 야옹~")
    }
}

let myDog = Dog(name: "댕댕이")
let myCat = Cat(name: "개냥이")
myCat.sayName()
myDog.sayName()
