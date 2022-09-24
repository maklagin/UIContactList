//
//  ContentView.swift
//  UIContactList
//
//  Created by Максим Кулагин on 22.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            ContactListView(person: Person.getContactList())
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contact")
                }
            
            ContactListDetailView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
