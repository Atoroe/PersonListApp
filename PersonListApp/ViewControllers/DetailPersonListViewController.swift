//
//  DetailPersonListViewController.swift
//  PersonListApp
//
//  Created by Artiom Poluyanovich on 13.04.21.
//

import UIKit

class DetailPersonListViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = String(persons[indexPath.row].phoneNumber)
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = persons[indexPath.row].email
            content.image = UIImage(systemName: "mail")
        }
        cell.contentConfiguration = content
        return cell
    }
}
