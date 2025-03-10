//
//  ViewController.swift
//  AboutMeApp
//
//  Created by User on 09.03.2025.
//

import UIKit

let LOGIN = "Admin"
let PASSWORD = "Admin"

final class LoginViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var loginInput: UITextField!
    @IBOutlet var passwordInput: UITextField!
    
    // MARK: overrides
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK: IBActions
    @IBAction func LoginBtnAcion() {
        guard let login = loginInput.text, !login.isEmpty else { return }
        guard let password = passwordInput.text, !password.isEmpty else { return }
        
        if login == LOGIN && password == PASSWORD {
            print("LOGIN SUCSESS")
        } else {
            showWrongAuthAlert()
        }
    }
    
    @IBAction func ForgotLoginBtnAction() {
        showAlert(withTitle: "User name", andMessage: "Admin")
    }
    
    @IBAction func ForgotPasswordBtnAction(_ sender: Any) {
        showAlert(withTitle: "Password", andMessage: "Admin")
    }
    
    // MARK: proivate methods    
    private func showWrongAuthAlert() {
        showAlert(withTitle: "Login fail", andMessage: "Wrong login or password")
    }
    
    private func showAlert(
        withTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

