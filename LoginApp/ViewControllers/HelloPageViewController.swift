//
//  HelloPageViewController.swift
//  LoginApp
//
//  Created by mac on 30.05.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import UIKit

class HelloPageViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!

    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
    }
    
    @IBAction func logOutButtonPress() {
        dismiss(animated: true)
    }
}
