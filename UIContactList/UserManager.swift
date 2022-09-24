//
//  UserManager.swift
//  UIContactList
//
//  Created by Максим Кулагин on 22.09.2022.
//

import Combine

final class UserManager: ObservableObject {
    
    @Published var user = User()
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}
struct User: Codable {
    var name = ""
}


