//
//  Contact.swift
//  ContactsSwiftUI
//
//  Created by Oksana Tugusheva on 16.06.2021.
//

import Foundation

struct Contact: Identifiable {
    let id = UUID()
    let firstname: String
    let lastname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(firstname) \(lastname)"
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
}
