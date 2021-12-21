//
//  DetailViewController.swift
//  ContactList
//
//  Created by Алена on 09.12.2021.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    
   // var personModelsDataPersonData().personDataArray
    var testModel: PersonModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: \(testModel.phoneNumber)"
        mailLabel.text = "Mail: \(testModel.email)"

    }

}
