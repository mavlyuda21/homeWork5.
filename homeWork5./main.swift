//
//  main.swift
//  homeWork5.
//
//  Created by mavluda on 18/2/23.
//

import Foundation

var dataBase = DataBase()

while true{
    dataBase.addUser()
    print("Продолжить ввод?(y/n)")
    var readline = readLine()!
    if readline == "n"{
        print("Ввод завершен!")
        break
    }
}

dataBase.showInfo(country: .usa)
dataBase.showInfo(country: .russia)
dataBase.showInfo(country: .turkey)
