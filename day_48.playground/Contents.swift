class MyClass {
    
    // 인스턴스 메소드
    func saySomething(){
        print("saySomething")
    }
    
    // 상속이 가능하다
    class func sayHi() {
        print("안녕?!")
    }
    
    // 상속 X
    static func sayHello() {
        print("안녕?! 하세요~!")
    }
    
    // 상속 X
    final class func sayHelloHello() {
        print("안녕?! 하세요~! 안녕?! 하세요~")
    }
}

class MySubClass : MyClass {
    
    override class func sayHi() {
        super.sayHi()
        print("MySubClass.sayHi - called")
    }
}

MySubClass.sayHi()

MyClass.sayHi()

let myObject = MyClass()

myObject.saySomething()







