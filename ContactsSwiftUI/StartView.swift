//
//  StartView.swift
//  ContactsSwiftUI
//
//  Created by Oksana Tugusheva on 16.06.2021.
//

import SwiftUI

struct StartView: View {
    let contacts = Contact.getContacts()
    
    var body: some View {
        TabView {
            NavigationView {
                ListView(contacts: contacts)
            }
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NavigationView {
                NumbersView(contacts: contacts)
            }
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
