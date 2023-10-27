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
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "anotherCells", for: indexPath)
        
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.name
        cell.contentConfiguration = content
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }
    

}
