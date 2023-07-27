import UIKit


// 범위안에서 반복처리
for countdown in stride(from: 10, to: 0, by: -2) {
    print("카운트 다운 to: \(countdown)")
}
print("=======")
for countdown in stride(from: 5, through: 0, by: -1) {
    print("카운트 다운 through: \(countdown)")
}

//for countup in stride(from: 0, to: 5, by: 1) {
//    print("카운트 업 : \(countup)")
//}



extension Array {
    
    func chunks(_ chunkSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chunkSize).map{
            return Array(self[$0..<Swift.min($0 + chunkSize, self.count)])
        }
    }
}

let numbers = Array(1...10)
let chuckedArray = numbers.chunks(2)
