//
//  HomeScreenView.swift
//  UIContactList
//
//  Created by Максим Кулагин on 22.09.2022.
//

import SwiftUI

struct HomeScreenView: View {
    
    var body: some View {
        NavigationLink("Contact List") {
            FlightBoardView()
        }
        Text("ContactList")
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
