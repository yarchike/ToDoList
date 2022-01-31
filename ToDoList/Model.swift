//
//  Model.swift
//  ToDoList
//
//  Created by Yarchik on 23.01.2022.
//

import Foundation

var ToDoItems: [[String: Any]] {
    set{
        UserDefaults.standard.set(newValue, forKey: "ToDoDataKey")
        UserDefaults.standard.synchronize()
    }
    get{
        if let array = UserDefaults.standard.array(forKey: "ToDoDataKey") as? [[String: Any]] {
            return  array
        }else{
            return []
        }
    }
}
func addItem(nameItem: String, isCompeted: Bool = false){
    ToDoItems.append(["Name" : nameItem, "isCompleted" : isCompeted])
}

func removeItem(at index: Int){
    ToDoItems.remove(at: index)
}
func moveItem(from: Int, to: Int){
    let fromTemp = ToDoItems[from]
    ToDoItems.remove(at: from)
    ToDoItems.insert(fromTemp, at: to)
}


func changeState(at item: Int) -> Bool{
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    return  ToDoItems[item]["isCompleted"] as! Bool
}


