//
//  DetailRowView.swift
//  ContactsSwiftUI
//
//  Created by Oksana Tugusheva on 16.06.2021.
//

import SwiftUI

struct DetailRowView: View {
    let text: String
    let icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}


struct DetailRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRowView(text: Contact.getContacts().first!.email, icon: "tray")
    }
}
