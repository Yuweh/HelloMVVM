//
//  RegistrationViewModel.swift
//  HelloMVVM
//
//  Created by Francis Jemuel Bergonia on 17/05/2018.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import UIKit
import Foundation

class RegistrationViewModel {

    var firstName: String
    var lastName: String
    var email: String
    var password: String
    
    init(firstName: String, lastName: String, email: String, password: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }

    //allow to save in the ViewModel
    
    func save() {
        let user = User(vm: self)
        
        //DataAccess.save(user)
    }
    
}
