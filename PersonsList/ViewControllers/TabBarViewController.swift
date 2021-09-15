//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Константин Кириллов on 15.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let persons = Person.getPersons()
        
        guard let viewControllers = viewControllers else { return }
        for viewController in viewControllers {
            if let personalListVC = viewController as? PersonsListViewController {
                personalListVC.personsData = persons
            } else if let extendedVC = viewController as? ExtendedPersonalListViewController {
                extendedVC.personsData = persons
            }
        }
    }
}
