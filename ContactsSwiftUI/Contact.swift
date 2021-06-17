//
//  Contact.swift
//  ContactsSwiftUI
//
//  Created by Oksana Tugusheva on 16.06.2021.
//

import Foundation

class Contact: NSObject, Identifiable {
    let firstname: String
    let lastname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(firstname) \(lastname)"
    }
    
    init(firstname: String, lastname: String, email: String, phone: String) {
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.phone = phone
    }
}

extension Contact {
    static func getContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        let firstnames = DataManager.shared.firstNames.shuffled()
        let lastnames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(firstnames.count, lastnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            contacts.append(
                Contact(
                    firstname: firstnames[index],
                    lastname: lastnames[index],
                    email: emails[index],
                    phone: phones[index]
                )
            )
        }
        
        return contacts
    }
    
    static func getContact() -> Contact {
        Contact(
            firstname: DataManager.shared.firstNames.randomElement() ?? "",
            lastname: DataManager.shared.lastNames.randomElement() ?? "",
            email: DataManager.shared.emails.randomElement() ?? "",
            phone: DataManager.shared.phones.randomElement() ?? ""
        )
    }
}
