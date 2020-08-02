//
//  EditProfileViewController.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/08/03.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import UIKit
import JGProgressHUD

class EditProfileViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    // MARK: - Vars
    
    let hud = JGProgressHUD(style: .dark)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // MARK: - IBActions
    
    
    @IBAction func saveBarButtonPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
        
    }
    
    // MARK: - UpdateUI
    
    private func loadUserInfo() {
        if MUser.currentUser() != nil {
            let currentUser = MUser.currentUser()!
            nameTextField.text = currentUser.firstName
            surnameTextField.text = currentUser.lastName
            addressTextField.text = currentUser.fullAddress
        }
    }
    
}
