//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by User on 10.03.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var userNameLabel: UILabel!
    
    // MARK: variables
    var userName: String!
    
    // MARK: override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initViewLayer()
        
        userNameLabel.text = "Hello, \(userName ?? "user")"
    }
    
    // MARK: private methods
    private func initViewLayer() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
        ]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        gradientLayer.frame = view.frame
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    // MARK: IBActions
    @IBAction func logoutBtnAction() {
        dismiss(animated: true)
    }
}
