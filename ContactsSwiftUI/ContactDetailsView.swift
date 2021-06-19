//
//  ContactDetailsView.swift
//  ContactsSwiftUI
//
//  Created by Oksana Tugusheva on 16.06.2021.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Contact
    
    var body: some View {
        Form {
            HStack(alignment: .center) {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
            }.padding()
            DetailRowView(text: contact.email, icon: "tray")
            DetailRowView(text: contact.phone, icon: "phone")
        }
            .navigationTitle(contact.fullname)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Contact.getContacts().first!)
    }
}
