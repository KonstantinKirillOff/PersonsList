//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Константин Кириллов on 08.09.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {

    let persons = Person.getPersons()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonDataCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let personData = persons[indexPath.row]
        
        content.text = personData.fulName
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let tabControllers = segue.destination as? UITabBarController {
            guard let viewControllers = tabControllers.viewControllers else { return }
            
            for viewController in viewControllers {
                guard let navigationVC = viewController as? UINavigationController else { return }
                
                if let extendedInfoVC = navigationVC.topViewController as? AllContactInfoViewController {
                    extendedInfoVC.personsData = persons
                }
            }
        } else if let personalInfoVC = segue.destination as? PersonInformtionViewController {
            guard let indexPathPerson = tableView.indexPathForSelectedRow else { return }
            personalInfoVC.personData = persons[indexPathPerson.row]
        }
    }
}

