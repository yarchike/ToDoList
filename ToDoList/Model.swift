//
//  Model.swift
//  ToDoList
//
//  Created by Yarchik on 23.01.2022.
//

import Foundation

var ToDoItems: [[String: Any]] = [["Name" : "Позвонить маме", "isCompleted" : true],["Name" : "Дописать приложение", "isCompleted" : false],["Name" : "Отменить успешное выполнение задание", "isCompleted" : false]]

func addItem(nameItem: String, isCompeted: Bool = false){
    ToDoItems.append(["Name" : nameItem, "isCompleted" : isCompeted])
    saveData()
}

func removeItem(at index: Int){
    ToDoItems.remove(at: index)
    saveData()
}

func saveData(){
    
}

func loadData(){
    
}

func changeState(at item: Int) -> Bool{
    ToDoItems[item]["isCompleted"] = !(ToDoItems[item]["isCompleted"] as! Bool)
    saveData()
    return  ToDoItems[item]["isCompleted"] as! Bool
}


