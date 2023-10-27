//
//  ContactListViewController.swift
//  ContactList
//
//  Created by John Doe on 27.10.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    private var dataStore = DataStore()
    private var contactList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0..<10 {
            let person = dataStore.generateRandomPerson()
            contactList.append(person)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "contactDetails" {
            guard let detailsVC = segue.destination as? ContactDeatilsViewController else { return }
            detailsVC.contact = sender as? Person
        }
    }

}
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.name
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contactList[indexPath.row]
        performSegue(withIdentifier: "contactDetails", sender: contact)
    }

}
