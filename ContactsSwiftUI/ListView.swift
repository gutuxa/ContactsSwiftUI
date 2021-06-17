//
//  ContentView.swift
//  ContactsSwiftUI
//
//  Created by Oksana Tugusheva on 16.06.2021.
//

import SwiftUI

struct ListView: View {
    let contacts: [Contact]
    
    var body: some View {
        List(contacts, id: \.self) { contact in
            NavigationLink(
                contact.fullname,
                destination: ContactDetailsView(contact: contact)
            )
        }
            .navigationTitle("Contact List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(contacts: Contact.getContacts())
    }
}
