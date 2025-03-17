//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by User on 17.03.2025.
//

import UIKit

class BioViewController: StyledViewController {
    @IBOutlet var bioLabel: UILabel!
    
    var bioInfo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bioLabel.text = bioInfo
    }

}
