import UIKit

let statusCode = 500

func isValidEmail(_ email: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}

func ~= (pattern: NSPredicate, value: String) -> Bool{
    return pattern.evaluate(with: value)
}

func ~= (pattern: String, value: Int) -> Bool{
    return pattern == "\(value)"
}



let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)

if emailPred ~= "ppakcoding" {
    print("이메일 형식입니다")
} else {
    print("이메일 형식이 아닙니다")
}

switch "ppakcoding@email.com" {
case emailPred:
    print("이메일 형식입니다 - switch")
default:
    print("이메일 형식이 아닙니다 - switch")
}

let someValue = 30

if "30" ~= someValue {
    print("30 입니다")
} else {
    print("30 아닙니다")
}

switch someValue {
case "30":
    print("30 입니다 - switch")
default:
    print("30 아닙니다 - switch")
}

if case "30" = someValue {
    print("30 입니다 - if case")
} else {
    print("30 아닙니다 - if case")
}

//// 조건, if, guard, 스위치
//if (400...500) ~= statusCode {
//    print("들어옴")
//}
//
//switch statusCode {
//case (400...500):
//    print("들어옴 - switch")
//default: break
//}
//
//if case (400...500) = statusCode {
//    print("들어옴 - is case")
//}
//
//
//func doSomeCheck(status: Int){
//    guard (400...500) ~= status else {
//        print("X")
//        return
//    }
//    print("들어왔습니다")
//}
//
//doSomeCheck(status: 500)
 
