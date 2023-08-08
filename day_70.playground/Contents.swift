import UIKit

var count : Int = 6

let max = 5

// 일단 실행 -> 조건 체크
repeat {
    count += 1
    print("count: \(count)")
} while count < max
print("완료")

//// 조건 먼저 -> 실행
while count < max {
    count += 1
    print("count: \(count)")
}

print("완료")
