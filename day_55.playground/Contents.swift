import UIKit

class Cat {}
class Dog {}

let myCat = Cat()
let myDog = Dog()

if myCat is Cat {
    print("고양이 입니다111")
}

func checkIfSheIsCat(){
    guard myCat is Cat else {
        print("고양이가 아닙ㄴ다 ")
        return
    }
    print("고양이 입니다 22")
}

checkIfSheIsCat()

switch myCat {
    case is Dog:
    print("강아지 입니다 333")
    case let myKitty as Cat:
    print("고양이 입니다 333 ")
}

if case is Cat = myCat {
    print("고양이 입니다 44")
}

func checkIfSheIsDog(){
    guard case is Dog = myCat else {
        print("강아지가 아닙니다 555")
        return
    }
    print("강아지 입니다 555")
}

checkIfSheIsDog()
