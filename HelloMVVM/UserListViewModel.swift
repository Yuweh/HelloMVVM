//
//  UserListViewModel.swift
//  HelloMVVM
//
//  Created by Francis Jemuel Bergonia on 17/05/2018.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation

class UserListViewModel {
    
    var userViewModels: [UserViewModel] = [UserViewModel]()
    private var dataAccess: DataAccess
    
    init(dataAccess: DataAccess) {
        self.dataAccess = dataAccess
        populateUsers()
    }
    
    private func populateUsers() {
        let users = self.dataAccess.getAllUsers()
        self.userViewModels = users.map { user in
            return UserViewModel(user: user)
        }
    }
}

class UserViewModel {
    
    var firstName: String!
    var lastName: String!
    
    init(user: User) {
        self.firstName = user.firstName
        self.lastName = user.lastName
    }
    
}
