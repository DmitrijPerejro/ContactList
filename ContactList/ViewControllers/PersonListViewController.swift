//
//  PersonListFullInfoViewController.swift
//  ContactList
//
//  Created by Perejro on 17/11/2024.
//

import UIKit

final class PersonListViewController: UITableViewController {
    // Само тело класса получилось пустым, ибо вынес все по extension
    // Не очень понимаю, что теперь с пустым классом делать
    var persons: [Person]!
}

// MARK: UITableViewDataSource
extension PersonListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        // можно было просто сделать через indexPath.row === 0 ? ... : ...
        // но предположил, что может быть более чем только 2 поля
        switch indexPath.row {
            case 0:
                content.text = "Телефон: \(person.phone)"
                content.image = UIImage(systemName: "phone.fill")
            default:
                content.text = "Почта: \(person.email)"
                content.image = UIImage(systemName: "envelope.fill")
        }
        
        cell.contentConfiguration = content
        return cell
    }
}


// MARK: - UITableViewDelegate
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
