
import UIKit
import Foundation

enum Pet :String, CaseIterable{
    case cat = "고양이"
    case dog = "강아지"
    case bird = "참새"
}

let petNames : [String] = Pet.allCases.map{ $0.rawValue }



