//
//  ViewController.swift
//  ContactList
//
//  Created by Алена on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableViewBla: UITableView!
    
    
    var personModels = PersonData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewConroller = segue.destination as! DetailViewController
        guard let indexPath = tableViewBla.indexPathForSelectedRow else { return }
        viewConroller.testModel = personModels.personDataArray[indexPath.row]
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personModels.personDataArray.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = personModels.personDataArray[indexPath.row].fullName
        return cell
    }
    
    
}
