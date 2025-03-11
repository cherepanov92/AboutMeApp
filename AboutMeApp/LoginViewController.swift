//
//  ViewController.swift
//  AboutMeApp
//
//  Created by User on 09.03.2025.
//

import UIKit

// MARK: constants
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
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard loginInput.text == LOGIN, passwordInput.text == PASSWORD else {
            showWrongAuthAlert()
            return false
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeViewController = segue.destination as? WelcomeViewController
        
        welcomeViewController?.userName = loginInput.text
    }
    
    // MARK: IBActions
    @IBAction func ForgotLoginBtnAction() {
        showAlert(withTitle: "User name", andMessage: "Admin")
    }
    
    @IBAction func ForgotPasswordBtnAction() {
        showAlert(withTitle: "Password", andMessage: "Admin")
    }
    
    @IBAction func unwind(for _: UIStoryboardSegue) {
        loginInput.text = nil
        passwordInput.text = nil
    }
    
    // MARK: private methods
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

