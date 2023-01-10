import UIKit

var greeting = "Hello, playground"


func someFunctionWithTrailingClosure(name: String = "", completion: () -> Void){
    print(#fileID, #function, #line, "- ")
    completion()
}

someFunctionWithTrailingClosure(completion: {
    print(#fileID, #function, #line, "- hohoho 1")
})

someFunctionWithTrailingClosure {
    print(#fileID, #function, #line, "- hohoho 2")
}


func someFunctionWithClosures(first: () -> Void,
                              second: (String) -> Void,
                              third: (Int) -> Void){
    print(#fileID, #function, #line, "- ")
    first()
    second("호롤롤로")
    third(3)
}

someFunctionWithClosures(first: {
    print("첫번째")
}, second: {
    print("두번째: \($0)")
}, third: {
    print("세번째: \($0)")
})

someFunctionWithClosures{
    print("first")
} second: { string in
    print("string: \(string)")
} third: { number in
    print("number: \(number)")
}
