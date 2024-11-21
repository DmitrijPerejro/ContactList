//
//  PersonListViewController.swift
//  ContactList
//
//  Created by Perejro on 17/11/2024.
//

import UIKit

final class ContactListViewController: UITableViewController {
    var persons: [Person]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let vc = segue.destination as! ContactDetailsViewController
        vc.person = persons[indexPath.row]
    }
}

// MARK: UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}
