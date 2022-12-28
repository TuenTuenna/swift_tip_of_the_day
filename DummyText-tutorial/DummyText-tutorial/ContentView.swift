//
//  ContentView.swift
//  DummyText-tutorial
//
//  Created by Jeff Jeong on 2022/07/26.
//

import SwiftUI
import Fakery

struct ContentView: View {
    
//    let dummyList = (0..<100).map{ index -> ListItem in
//        let faker = Faker(locale: "ko")
//        return ListItem("인덱스 : \(faker.lorem.sentence(wordsAmount: 3))")
//    }
    
    let dummyList = ListItem.getDummies()
    
    var body: some View {
        List(dummyList) { aListItem in
            Text(aListItem.content)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
