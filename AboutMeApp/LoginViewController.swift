//
//  ViewController.swift
//  AboutMeApp
//
//  Created by User on 09.03.2025.
//

import UIKit

final class LoginViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var loginInput: UITextField!
    @IBOutlet var passwordInput: UITextField!
    
    private let login = "Admin"
    private let password = "Admin"
    
    // MARK: overrides
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard loginInput.text == login, passwordInput.text == password else {
            showAlert(
                withTitle: "Login fail",
                andMessage: "Wrong login or password",
                completion: {
                    self.passwordInput.text = nil
                }
            )
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
        showAlert(withTitle: "User name", andMessage: login)
    }
    
    @IBAction func ForgotPasswordBtnAction() {
        showAlert(withTitle: "Password", andMessage: password)
    }
    
    @IBAction func unwind(for _: UIStoryboardSegue) {
        loginInput.text = nil
        passwordInput.text = nil
    }
    
    // MARK: private methods
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        completion: (() -> Void)? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(
            title: "OK",
            style: .cancel
        ) { _ in
            completion?()
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

