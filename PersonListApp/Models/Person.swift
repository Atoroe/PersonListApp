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
