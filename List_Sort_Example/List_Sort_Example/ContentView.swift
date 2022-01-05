//
//  ContentView.swift
//  List_Sort_Example
//
//  Created by Jeff Jeong on 2022/01/05.
//

import SwiftUI

struct Todo : Comparable, Hashable{
    
    static func < (lhs: Todo, rhs: Todo) -> Bool {
        return lhs.id < rhs.id
//        return lhs.createdAt < rhs.createdAt
    }

    var id : Int
//    var createdAt : Date
    var title : String
}

struct ContentView: View {
    
    @State var todos : [Todo] = []
    
    @State var isAscending : Bool = true
    
//    @State var toggleTitle : String = "오름차순"
    
    var getToggleTitle : (Bool) -> String = { isAscending in
        return isAscending ? "오름차순" : "내림차순"
    }
    
    var body: some View {
        VStack{
            Toggle(getToggleTitle(isAscending), isOn: $isAscending)
                .padding(.horizontal, 20)
            listContent
        }
        .onChange(of: isAscending, perform: { (changedValue : Bool) in
            print("changedValue: ", changedValue)
//            toggleTitle = changedValue ? "오름차순" : "내림차순"
            if changedValue {
                self.todos.sort()
            } else {
                self.todos.sort(by: >)
            }
        })
        .onAppear(perform: {
            self.todos = self.getDummyTodos()
        })
        
    }
}

//MARK: - 뷰
extension ContentView {
    var listContent : some View {
        List{
            ForEach(todos, id: \.self) { aTodo in
                Text(aTodo.title)
            }
        }
    }
}

//MARK: - Helpers
extension ContentView {
    
    func getDummyTodos() -> [Todo] {
        print("getDummyTodos() called")
        var todos : [Todo] = []
        
        for i in 0...100 {
            let newTodo = Todo(id: i, title: "\(i) - 타이틀")
            todos.append(newTodo)
        }
        return todos
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
