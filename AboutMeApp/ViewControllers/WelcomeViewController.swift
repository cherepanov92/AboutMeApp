//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by User on 10.03.2025.
//

import UIKit

final class WelcomeViewController: StyledViewController {
    // MARK: IBOutlets
    @IBOutlet var userNameLabel: UILabel!
    
    // MARK: variables
    var currentUser: User!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLabel.text = "Hello, \(currentUser.login)\n my name is \(currentUser.person.name) \(currentUser.person.surname)"
    }
        
    // MARK: IBActions
    @IBAction func logoutBtnAction() {
        dismiss(animated: true)
    }
}
