//
//  DataAccess.swift
//  HelloMVVM
//
//  Created by Francis Jemuel Bergonia on 17/05/2018.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation

class DataAccess {
    
    func getAllUsers() -> [User] {
        
        var users = [User]()
        users.append(User(firstName: "Francis", lastName: "Bergonia", email: "test4@gmail.com", password: "password"))
        users.append(User(firstName: "Fae", lastName: "Bergonia", email: "test3@gmail.com", password: "password"))
        users.append(User(firstName: "Xian Jae", lastName: "Bergonia", email: "test2@gmail.com", password: "password"))
        users.append(User(firstName: "Cassiopeia", lastName: "Bergonia", email: "test1@gmail.com", password: "password"))
        
        return users
    }
}
