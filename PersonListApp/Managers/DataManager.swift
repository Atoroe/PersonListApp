//
//  DataManager.swift
//  PersonListApp
//
//  Created by Artiom Poluyanovich on 13.04.21.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    private init() { }
    
    private let firstNames = [
        "Liam",
        "Noah",
        "Oliver",
        "William",
        "Elijah",
        "James",
        "Benjamin",
        "Lucas",
        "Mason",
        "Ethan",
        "Alexander",
        "Henry",
        "Jacob",
        "Michael",
        "Daniel",
        "Logan",
        "Jackson",
        "Sebastian",
        "Jack",
        "Aiden"
    ]
    
    private let lastNames = [
        "Smith",
        "Jones",
        "Williams",
        "Brown",
        "Wilson",
        "Taylor",
        "Johnson",
        "White",
        "Martin",
        "Anderson",
        "Thompson",
        "Nguyen",
        "Turner",
        "Walker",
        "Harris",
        "Lee",
        "Ryan",
        "Robinson",
        "Kelly",
        "King"
    ]
    
    private let phoneNumbers = [
        6469767559,
        2216392745,
        7828671172,
        5266778947,
        4526404694,
        8847850987,
        9642795291,
        5807661517,
        7545314510,
        3874418534,
        6618131680,
        4518362398,
        3763852209,
        8784332221,
        6218195109,
        5147432108,
        9608530054,
        3128255713,
        7715691496,
        4473121390
    ]
    
    private let emails = [
        "mrdvt@mac.com",
        "afifi@msn.com",
        "duncand@yahoo.ca",
        "phizntrg@hotmail.com",
        "kingma@gmail.com",
        "mwandel@hotmail.com",
        "wainwrig@yahoo.com",
        "dmiller@gmail.com",
        "alhajj@me.com",
        "sequin@aol.com",
        "sherzodr@yahoo.ca",
        "mhanoh@live.com",
        "bhtower@msn.com",
        "oechslin@msn.com",
        "timtroyr@sbcglobal.net",
        "tlinden@yahoo.com",
        "emmanuel@me.com",
        "netsfr@icloud.com",
        "sravani@mac.com",
        "quantaman@att.net"
    ]
    
    func getListOfPersons() -> [Person] {
        var persons = [Person]()
        var firstNames = self.firstNames
        var lastNames = self.lastNames
        var phoneNumbers = self.phoneNumbers
        var emails = self.emails
        
        for _ in 0..<firstNames.count {
            persons.append(Person(
                            firstName: firstNames.remove(at: Int.random(in: 0..<firstNames.count)),
                            lastName: lastNames.remove(at: Int.random(in: 0..<lastNames.count)),
                            phoneNumber: phoneNumbers.remove(at: Int.random(in: 0..<phoneNumbers.count)),
                            email: emails.remove(at: Int.random(in: 0..<emails.count))))
            
        }
        return persons
    }
}
