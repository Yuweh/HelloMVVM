//
//  RegistrationTableViewController.swift
//  HelloMVVM
//
//  Copyright © 2017 XiApps.HelloMVVM. All rights reserved.
//

import Foundation
import UIKit

class RegistrationTableViewController : UITableViewController {
    
    @IBOutlet weak var firstNameTextField :UITextField!
    @IBOutlet weak var lastnameTextField :UITextField!
    @IBOutlet weak var emailTextField :UITextField!
    @IBOutlet weak var passwordTextField :UITextField!
    
    
    private var registrationViewModel: RegistrationViewModel!
    var selectedUserViewModel: UserViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstNameTextField.text = self.selectedUserViewModel.firstName
        self.lastnameTextField.text = self.selectedUserViewModel.lastName
    }
    
    @IBAction func saveBarButtonTapped() {
        
        //populates the RegistrationViewModel
        self.registrationViewModel = RegistrationViewModel(firstName: self.firstNameTextField.text!, lastName: self.lastnameTextField.text!, email: self.emailTextField.text!, password: self.passwordTextField.text!)
        
        //let user = User(vm: self.registrationViewModel)
        
        self.registrationViewModel.save() //save the user
        
    }
    
}
