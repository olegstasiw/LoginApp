//
//  ViewController.swift
//  LoginApp
//
//  Created by mac on 29.05.2020.
//  Copyright © 2020 Oleg Stasiw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        }else {
            passwordTextField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldShouldReturnOnTap(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func loginButtonPress() {
        let users = User.getlog()
        for user in users {
            for item in user.data {
                if loginTextField.text == item.key && passwordTextField.text == item.value {
                    performSegue(withIdentifier: "homePage", sender: nil)
                    passwordTextField.text = ""
                    break
                } else if loginTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true{
                    showAlert(with: "Oops", and: "Something is empty. Try again😉")
                } else {
                    showAlert(with: "Oops", and: "Something wrong. Try again😉")
                }
            }
        }
    }
    @IBAction func forgotUserNameButtonPress() {
        showAlert(with: "Hello✋", and: "Login is maybe - Admin")
    }
    @IBAction func forgotPasswordButtonPress() {
        showAlert(with: "Hello✋", and: "Try password - Pass")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first as! HelloPageViewController
        destinationVC.userName = "Hello, \(loginTextField.text ?? "")"
    }
}


extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
        }
        self.passwordTextField.text = ""
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

