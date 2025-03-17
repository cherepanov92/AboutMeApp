//
//  PersonalViewController.swift
//  AboutMeApp
//
//  Created by User on 16.03.2025.
//

import UIKit

final class PersonViewController: StyledViewController {

    @IBOutlet var userInfoLabels: [UILabel]!
    
    var person: Person!
    
    enum personViewLabels: Int {
        case suranme = 1
        case name = 2
        case age = 3
        case profession = 4
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userInfoLabels.forEach { label in
            switch personViewLabels(rawValue: label.tag)  {
            case .suranme:
                label.text = person.surname
            case .name:
                label.text = person.name
            case .age:
                label.text = getAgeToday(birday: person.birday)
            case .profession:
                label.text = person.profession
            case .none:
                break
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioView = segue.destination as? BioViewController
        bioView?.bioInfo = person.bio
    }
    
    private func getAgeToday(birday: String) -> String {
        let ageNotFound = "не определён"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy"
        
        if let date = dateFormatter.date(from: birday) {
            let currentDate = Date()
            
            let calendar = Calendar.current
            let yearDiff = calendar.dateComponents([.year], from: date, to: currentDate)
            
            guard let year = yearDiff.year else { return ageNotFound }
            
            return "\(year) лет"
        }
        
        return ageNotFound
    }
    

}
