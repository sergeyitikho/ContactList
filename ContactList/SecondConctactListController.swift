//
//  SecondConctactListController.swift
//  ContactList
//
//  Created by John Doe on 27.10.2023.
//

import UIKit

class SecondConctactListController: UITableViewController {
    
    private var contactList = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SecondConctactListController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].name
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "anotherCells", for: indexPath)
        let contact = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = contact.email
        } else {
            content.text = contact.phone
        }
        cell.contentConfiguration = content
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }
}
