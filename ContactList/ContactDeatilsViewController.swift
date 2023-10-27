//
//  ContactDeatilsViewController.swift
//  ContactList
//
//  Created by John Doe on 27.10.2023.
//

import UIKit

class ContactDeatilsViewController: UIViewController {
    

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var contact: Person!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.name
        emailLabel.text = "Email: \(contact.email)"
        phoneLabel.text = "Phone: \(contact.phone)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
