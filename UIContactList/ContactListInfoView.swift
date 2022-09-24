//
//  ContactListInfoView.swift
//  UIContactList
//
//  Created by Максим Кулагин on 24.09.2022.
//

import SwiftUI

struct ContactListInfoView: View {
    
    let name: String
    let phone: String
    let email: String
    let fullName: String
    
    var body: some View {
        VStack {
            List {
                Image(name)
                    .cornerRadius(40)
                
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.green)
                    Text(phone)
                }
                
                HStack {
                    Image(systemName: "tray.fill")
                        .foregroundColor(.blue)
                    Text(email)
                }

            } .navigationTitle(fullName)
        }
    }
}

struct ContactListInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListInfoView(name: "Ted", phone: "89199199191", email: "swift@apple.com", fullName: "")
    }
}
