//
//  ListItem.swift
//  DummyText-tutorial
//
//  Created by Jeff Jeong on 2022/07/26.
//

import Foundation
import SwiftUI
import Fakery

struct ListItem : Identifiable, Hashable {
    var id : UUID = UUID()
    var content : String
    
    init(_ content: String = "내용 없음"){
        self.content = content
    }
}

extension ListItem {
    static func getDummies() -> [ListItem] {
        return (0..<100).map{ index -> ListItem in
            let faker = Faker(locale: "ko")
            return ListItem("인덱스 : \(faker.lorem.sentence(wordsAmount: 3))")
        }
    }
}
