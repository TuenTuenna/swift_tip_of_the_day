import UIKit

// 자료형이 Error 인 이넘
enum MismatchError: Error {
    case nameMismatch
    case numberMismatch
}

// throw 를 통해 에러를 밖으로 던진다
// 에러를 밖으로 보낸다고 메소드 반환 부분에 throws 표시
// 에러를 던지는 메소드
func guessMyName(name input: String) throws {
    print("guessMyName() called")
    
    if input != "쩡대리" {
        print("틀렸다")
        throw MismatchError.nameMismatch
//        return
    }
    print("맞췄다")
}


/// 번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췄는지 여부
func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyNumber() called")
    
    if input != 10 {
        print("틀렸다")
        throw MismatchError.numberMismatch
//        return
    }
    print("맞췄다")
    return true
}

//try? guessMyName(name: "이대리")

// 해당 메소드에서 에러가 던져져도 에러 처리를 안할려면
// try에 ?를 붙여준다
//try? guessMyName(name: "이대리")

// do 가 영문법에서 강조 라고 생각하면 좋다.
// do study, do work hard
// 에러 잡아!
// do catch 를 이용해 외부로 던져진 에러를 잡아서 에러 처리가 가능
do {
   try guessMyName(name: "이대리")
} catch {
    print("잡은 에러: \(error)")
}

// 에러를 던지는 반환형이 있는 메소드의 경우에는
// 에러가 던져졌을때 데이터를 반환하지 않고 바로 catch블럭으로 들어가는 것을 볼 수 있다.
do {
   let receivedValue = try guessMyNumber(number: 9)
} catch {
    print("잡은 에러: \(error)")
}
