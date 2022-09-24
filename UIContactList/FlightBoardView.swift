//
//  FlightBoardView.swift
//  UIContactList
//
//  Created by Максим Кулагин on 22.09.2022.
//

import SwiftUI

struct FlightBoardView: View {
    let name: String
    let person: [Person]
    
    var body: some View {
        List(person) { persons in
            NavigationLink {
                DetailsView()
            } label: {
                <#code#>
            }

        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(name: "Contact List", person: Person.getContactList())
    }
}
