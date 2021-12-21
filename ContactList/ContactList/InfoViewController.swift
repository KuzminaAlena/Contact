//
//  InfoViewController.swift
//  ContactList
//
//  Created by Алена on 09.12.2021.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var tableViewInfo: UITableView!
    
    var personModels = PersonData()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
    }


}
extension InfoViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return personModels.personDataArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return personModels.personDataArray[section].fullName
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableViewInfo.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        let person = personModels.personDataArray[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell1.textLabel?.text = person.phoneNumber
            cell1.textLabel?.textColor = .blue
            cell1.textLabel?.backgroundColor = .gray
            cell1.imageView?.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            cell1.textLabel?.text = person.email
            cell1.imageView?.image = UIImage(systemName: Contacts.email.rawValue)
        }
      
        return cell1
    }
}
