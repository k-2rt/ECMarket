//
//  AddItemViewController.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/07/28.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var priceTextFiled: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - IBAction

    @IBAction func doneBarButtonItemPressed(_ sender: Any) {
    }
    
    @IBAction func cameraButtonPressed(_ sender: Any) {
    }
    
    @IBAction func backgroundTapped(_ sender: Any) {
    }
}
