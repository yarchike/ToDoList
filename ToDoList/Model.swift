//
//  Model.swift
//  ToDoList
//
//  Created by Yarchik on 23.01.2022.
//

import Foundation

var ToDoItems: [String] = ["Позвонить маме", "Написать приложение"]

func addItem(nameItem: String){
    ToDoItems.append(nameItem)
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


