//
//  DataBase.swift
//  homeWork5.
//
//  Created by mavluda on 18/2/23.
//
//Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.
import Foundation

struct User{
    var name : String
    var surname : String
    var phoneNum : String
    var code : CountryNum
}

enum CountryNum : String{
    case turkey = "+905"
    case russia = "+7"
    case usa = "+1"
}

class DataBase{
    var userArray = [User]()
    init() {
    }
    
    func addUser(){
        print("Введите имя")
        let name = readLine()!
        print("Введите фамилию")
        let surname = readLine()!
        print("Введите страну")
        let country = readLine()!
        print("Введите номер телефона")
        let number = readLine()!
        
        var countryResult = CountryNum.usa
        
        switch country{
        case "Россия" : countryResult = .russia
        case "США": countryResult = .usa
        case "Турция": countryResult = .turkey
        default: print("Страна введена неверно")
        }
        
        userArray.append(User(name: name, surname: surname, phoneNum: countryResult.rawValue + number, code: countryResult))
        
        dump(userArray)
    }
    
    func showInfo(country: CountryNum){
        var found = false
        var totalString = ""
        for i in userArray{
            if i.code == country{
                found = true
                totalString += "Имя - \(i.name).Фамилия - \(i.surname). Номер телефона - \(i.code.rawValue)\(i.phoneNum)\n"
            }
        }
        if found{
            print(totalString)
        }else{
            print("Пользователей из указанной страны не существует")
        }
    }
}
