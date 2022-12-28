import UIKit

var myArray = ["one", "2", "three", "4"]

let intArray : [Int?] = myArray.map { item in
    return Int(item)
}

print(intArray)


let onlyIntArray : [Int] = myArray.compactMap { item in
    return Int(item)
}

print(onlyIntArray)

