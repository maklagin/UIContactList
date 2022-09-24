//
//  ContactListDetailView.swift
//  UIContactList
//
//  Created by Максим Кулагин on 23.09.2022.
//

import SwiftUI

struct ContactListDetailView: View {
    
    var person: [Person] = []
    
    var body: some View {
        NavigationView {
            List {
                SetupContentView(person: Person.getContactList())
            }
        }
    }
}

struct SetupContentView: View {
    var person: [Person] = []
    
    var body: some View {
        ForEach(person) { persons in
            Section(header: Text(persons.fullName)) {
                
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.green)
                    Text(persons.phoneNumber)
                }
                
                HStack {
                    Image(systemName: "tray.fill")
                        .foregroundColor(.blue)
                    Text(persons.email)
                } .navigationTitle("Contact List")
            }
        }
    }
}

struct ContactListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListDetailView()
        SetupContentView(person: Person.getContactList())
    }
}
