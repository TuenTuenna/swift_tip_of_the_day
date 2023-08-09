
let somePoint = (x: 2, y: 1)


if case (x: 2, y:0) = somePoint {
    print("케이스에 들어옴")
}

func someGuardCheck(somePoint: (x: Int, y: Int)) {
    guard case (x: 2, y:0) = somePoint else {
        print("x :2, y: 0 이것이 아닙니다")
        return
    }
    print("완료")
}

someGuardCheck(somePoint: somePoint)

switch somePoint {
case (x: 0, y: 0):
    print("중심")
case (_, 0):
    print("x축에 있다")
case (x: 0, _):
    print("y축에 있다")
case (-2...2, -2...2):
    print("상자 안에 있다")
default:
    print("상자 밖")
}


