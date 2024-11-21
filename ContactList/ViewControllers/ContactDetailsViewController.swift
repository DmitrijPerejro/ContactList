//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Perejro on 17/11/2024.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
