//
//  Person.swift
//  PersonsList
//
//  Created by Константин Кириллов on 08.09.2021.
//

struct Person {
    let firstName: String
    let lastName: String
    let phone: String
    let email: String
    
    var fulName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
        let dataManager = DataManager.getInstance()
        
        return [
            Person(
                firstName: dataManager.firstNames.randomElement() ?? "",
                lastName: dataManager.lastNames.randomElement() ?? "",
                phone: dataManager.phones.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? ""
            ),
            Person(
                firstName: dataManager.firstNames.randomElement() ?? "",
                lastName: dataManager.lastNames.randomElement() ?? "",
                phone: dataManager.phones.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? ""
            ),
            Person(
                firstName: dataManager.firstNames.randomElement() ?? "",
                lastName: dataManager.lastNames.randomElement() ?? "",
                phone: dataManager.phones.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? ""
            ),
            Person(
                firstName: dataManager.firstNames.randomElement() ?? "",
                lastName: dataManager.lastNames.randomElement() ?? "",
                phone: dataManager.phones.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? ""
            ),
            Person(
                firstName: dataManager.firstNames.randomElement() ?? "",
                lastName: dataManager.lastNames.randomElement() ?? "",
                phone: dataManager.phones.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? ""
            ),
            Person(
                firstName: dataManager.firstNames.randomElement() ?? "",
                lastName: dataManager.lastNames.randomElement() ?? "",
                phone: dataManager.phones.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? ""
            )
        
        ]
    }
}

class DataManager {
    private static var uniqueInstance: DataManager?
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
    
    static func getInstance() -> DataManager {
        if uniqueInstance == nil {
            uniqueInstance = DataManager()
        }
        
        return uniqueInstance!
    }
}
