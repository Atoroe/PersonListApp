//
//  MainTapBarController.swift
//  PersonListApp
//
//  Created by Artiom Poluyanovich on 13.04.21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let persons = DataManager.shared.getListOfPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Persons List"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        setDataToVC()
    }
    
    private func setDataToVC() {
        guard let viewControllers = self.viewControllers else { return }

        for viewController in viewControllers {
            if let detailPersonListVC = viewController as? DetailPersonListViewController{
                detailPersonListVC.persons = self.persons
            } else if let PersonListVC = viewController as? PersonListViewController{
                PersonListVC.persons = self.persons
            }
        }
    }    
}
