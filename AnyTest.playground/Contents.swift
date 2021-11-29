import UIKit

var things : [Any] = []

let title : String = "오늘도"

let name : String = "빡코딩!"

let fullName : String = {
    return title + " " + name
}()

let sayHi : (String, String) -> String = { (title: String, name: String) -> String in
    return "안녕? \(title) \(name)"
}

things.append(title)
things.append(name)
things.append(fullName)
things.append(sayHi(title, name))

things.forEach{
    print($0)
}
