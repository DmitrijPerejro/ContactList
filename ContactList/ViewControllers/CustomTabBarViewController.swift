//
//  CustomTabBarViewController.swift
//  ContactList
//
//  Created by Perejro on 17/11/2024.
//

import UIKit

final class CustomTabBarViewController: UITabBarController, UITabBarControllerDelegate {
    let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
    }
    
    private func setupNavigation() {
        self.viewControllers?.forEach { vc in
            if let navigationController = vc as? UINavigationController,
               let contactListVC = navigationController.viewControllers.first as? ContactListViewController {
                contactListVC.persons = persons
            } else if let navigationController = vc as? UINavigationController,
               let personListVC = navigationController.viewControllers.first as? PersonListViewController {
                personListVC.persons = persons
            }
         }
        
    }
}
