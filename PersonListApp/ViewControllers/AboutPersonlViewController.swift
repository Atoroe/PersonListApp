//
//  DetailViewController.swift
//  PersonListApp
//
//  Created by Artiom Poluyanovich on 13.04.21.
//

import UIKit

class AboutPersonlViewController: UIViewController {

    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = person.fullName
        
        phoneNumberLabel.text = String(person.phoneNumber)
        emailLabel.text = person.email

    }
    

}
