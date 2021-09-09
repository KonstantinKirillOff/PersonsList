//
//  PersonInformtionViewController.swift
//  PersonsList
//
//  Created by Константин Кириллов on 08.09.2021.
//

import UIKit

class PersonInformtionViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var personData: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let personData = personData else { return }
        navigationItem.title = personData.fulName
        phoneLabel.text = "Phone: \(personData.phone)"
        emailLabel.text = "Email: \(personData.email)"
    }
    
}
