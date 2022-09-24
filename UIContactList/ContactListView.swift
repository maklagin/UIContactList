//
//  ContactListView.swift
//  UIContactList
//
//  Created by Максим Кулагин on 23.09.2022.
//

import SwiftUI

struct ContactListView: View {
    
    var person: [Person] = []
    
    var body: some View {
        NavigationView {
            
            List(person) { persons in
                ContactCell(person: persons)
                
            } .navigationTitle("Contact List")
        }
    }
}

struct ContactCell: View {
    let person: Person
    
    var body: some View {
        HStack {
            Image(person.imageName)
                .cornerRadius(40)
            
            NavigationLink(
                person.fullName,
                destination: ContactListInfoView(
                    name: person.imageName,
                    phone: person.phoneNumber,
                    email: person.email,
                    fullName: person.fullName)
            )
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(person: Person.getContactList())
    }
}
