//
//  NumbersView.swift
//  ContactsSwiftUI
//
//  Created by Oksana Tugusheva on 16.06.2021.
//

import SwiftUI

struct NumbersView: View {
    let contacts: [Contact]
    
    var body: some View {
        List {
            ForEach(contacts) { contact in
                Section(
                    header: Text(contact.fullname)
                        .textCase(nil)
                ) {
                    DetailRowView(text: contact.email, icon: "tray")
                    DetailRowView(text: contact.phone, icon: "phone")
                }
            }
        }
            .navigationTitle("Numbers List")
            .listStyle(InsetListStyle())
    }
}

struct NumbersView_Previews: PreviewProvider {
    
    static var previews: some View {
        NumbersView(contacts: Contact.getContacts())
    }
}
