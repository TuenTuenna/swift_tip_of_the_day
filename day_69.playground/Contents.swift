import UIKit

var count : Int = 0

while count < 5 {
    
    count += 1
//    count = count - 1
    print("count: \(count)")
    if count == 3 {
        break
    }
}
print("완료 \(count)")
