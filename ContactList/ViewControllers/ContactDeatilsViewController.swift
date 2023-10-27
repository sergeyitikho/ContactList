//
//  ContactDeatilsViewController.swift
//  ContactList
//
//  Created by John Doe on 27.10.2023.
//

import UIKit

final class ContactDeatilsViewController: UIViewController {
    

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.name
        emailLabel.text = "Email: \(contact.email)"
        phoneLabel.text = "Phone: \(contact.phone)"
    }
}
