//
//  StyledViewController.swift
//  AboutMeApp
//
//  Created by User on 17.03.2025.
//

import UIKit

class StyledViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initViewLayer()
    }

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

}
