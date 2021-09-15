//
//  AllContactInfoViewController.swift
//  PersonsList
//
//  Created by Константин Кириллов on 08.09.2021.
//

import UIKit

class ExtendedPersonalListViewController: UITableViewController {
    
    var personsData: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        guard let personsData = personsData else { return 0 }
        return personsData.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsData[section].fulName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "extendedInformationalCell", for: indexPath)

        var content = cell.defaultContentConfiguration()
        let personData = personsData[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = personData.email
            content.image = UIImage(systemName: "mail" )
        default:
            content.text = personData.phone
            content.image = UIImage(systemName: "phone")
        }
    
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
