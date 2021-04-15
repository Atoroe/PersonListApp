//
//  MainTapBarController.swift
//  PersonListApp
//
//  Created by Artiom Poluyanovich on 13.04.21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    private let persons = Person.getListOfPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDataToVC()
    }
    
    private func setDataToVC() {
        guard let viewControllers = viewControllers else { return }

        for viewController in viewControllers {
            if let detailPersonListVC = viewController as? DetailPersonListViewController{
                detailPersonListVC.persons = self.persons
            } else if let PersonListVC = viewController as? PersonListViewController{
                PersonListVC.persons = self.persons
            }
        }
    }    
}
