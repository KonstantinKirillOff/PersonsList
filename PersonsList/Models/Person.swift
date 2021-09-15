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
        let dataManager = DataManager.uniqueInstance
        
        var uniquePersons = [Person]()
        
        let names = dataManager.firstNames.shuffled()
        let sournames = dataManager.lastNames.shuffled()
        let emails = dataManager.emails.shuffled()
        let phones = dataManager.phones.shuffled()
        
        let countIteration = min(names.count, sournames.count, emails.count, phones.count)
        
        for item in 0..<countIteration {
            let newUniquePerson = Person(firstName: names[item], lastName: sournames[item], phone: phones[item], email: emails[item])
            uniquePersons.append(newUniquePerson)
        }
        
        return uniquePersons
    }
}


