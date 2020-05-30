//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by mac on 30.05.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var edukationLabel: UILabel!
    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Oleg Stasiv"
        countryLabel.text = "in Ukraine"
        birthLabel.text = "15.11.1996"
        edukationLabel.text = "Lawyer"
        workLabel.text = "Lawyer"
        hobbyLabel.text = "Football"
        teamLabel.text = "Arsenal"
    }
    
    
    @IBAction func logOutButtonPress() {
        dismiss(animated: true)
    }
    
}
