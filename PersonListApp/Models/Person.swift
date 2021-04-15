//
//  Person.swift
//  PersonListApp
//
//  Created by Artiom Poluyanovich on 13.04.21.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: Int
    let email: String
    
    var fullName: String {
        firstName + " " + lastName
    }
}

extension Person {
    static func getListOfPersons() -> [Person] {
        var persons = [Person]()
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for index in 0..<firstNames.count {
            persons.append(Person(
                            firstName: firstNames[index],
                            lastName: lastNames[index],
                            phoneNumber: phoneNumbers[index],
                            email: emails[index]
            ))
        }
        return persons
    }
}

