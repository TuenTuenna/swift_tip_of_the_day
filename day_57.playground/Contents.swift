import UIKit

@objc protocol Animal {
    @objc optional func doMoreCry()
}

protocol Pet {
    func doCry()
}

extension Pet {
    func doCry(){}
}

class Cat : Animal {
}
