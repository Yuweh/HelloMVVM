//
//  User.swift
//  HelloMVVM
//
//  Copyright © 2017 XiApps.HelloMVVM. All rights reserved.
//

import Foundation


class User {
    
    var firstName :String!
    var lastName :String! 
    var email :String!
    var password :String!
    
    init(vm: RegistrationViewModel) {
        self.firstName = vm.firstName
        self.lastName = vm.lastName
        self.email = vm.email
        self.password = vm.password
    }
    
}
