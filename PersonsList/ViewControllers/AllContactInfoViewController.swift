//
//  AllContactInfoViewController.swift
//  PersonsList
//
//  Created by Константин Кириллов on 08.09.2021.
//

import UIKit

class AllContactInfoViewController: UITableViewController {
    
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
        let personData = personsData[indexPath.row]
        
        content.text = personData.phone
        
        cell.contentConfiguration = content
        return cell

    }

}
