//
//  PersonsListViewController.swift
//  PersonsList
//
//  Created by Константин Кириллов on 08.09.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {

    var personsData: [Person]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonDataCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let personData = personsData[indexPath.row]
        
        content.text = personData.fulName
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let personalInfoVC = segue.destination as? PersonInformtionViewController {
            guard let indexPathPerson = tableView.indexPathForSelectedRow else { return }
            personalInfoVC.personData = personsData[indexPathPerson.row]
        }
    }
}

