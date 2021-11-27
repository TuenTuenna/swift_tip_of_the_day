import UIKit

// 다크모드 여부
var isDarkMode : Bool = false

if (isDarkMode == true) {
    print("다크모드 입니다.")
} else {
    print("다크모드 아닙니다.")
}

if (isDarkMode != true) {
    print("다크모드 아닙니다.")
} else {
    print("다크모드 입니다.")
}

if isDarkMode == true {
    print("다크모드 입니다.")
} else {
    print("다크모드 아닙니다.")
}

if isDarkMode != true {
    print("다크모드 아닙니다.")
} else {
    print("다크모드 입니다.")
}


//isDarkMode == true
if !isDarkMode {
    print("다크모드 아닙니다.")
} else {
    print("다크모드 입니다.")
}

if isDarkMode {
    print("다크모드 입니다.")
} else {
    print("다크모드 아닙니다.")
}



var title : String = isDarkMode == true ? "다크모드 입니다" : "다크모드가 아닙니다."

var title2 : String = isDarkMode ? "다크모드 입니다" : "다크모드가 아닙니다."

var title3 : String = !isDarkMode ? "다크모드가 아닙니다." : "다크모드 입니다"

print("title: \(title)")

print("title2: \(title2)")

print("title3: \(title3)")
