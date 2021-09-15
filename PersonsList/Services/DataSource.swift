//
//  DataSource.swift
//  PersonsList
//
//  Created by Константин Кириллов on 15.09.2021.
//

class DataManager {
    
    static let uniqueInstance = DataManager()
   
    let firstNames: [String]
    let lastNames: [String]
    let phones: [String]
    let emails: [String]
    
    private init() {
        self.firstNames = ["Bruce", "John", "Steven", "Tim", "Sharon", "Carl"]
        self.lastNames = ["Butler", "Smith", "Black", "William", "Jankin", "Kirillov"]
        self.phones = ["123456", "234567", "345678", "456789", "567890", "678901"]
        self.emails = ["1@mail.ru", "2@mail.ru", "3@mail.ru", "4@mail.ru", "5@mail.ru", "6@mail.ru"]
    }
}
