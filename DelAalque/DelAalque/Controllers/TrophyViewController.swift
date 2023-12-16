//
//  TrophyViewController.swift
//  DelAalque
//
//  Created by Anxi on 6/9/23.
//

import UIKit

class TrophyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Premis"
        setNavigationBarApperance()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.tintColor = UIColor.appColor(.purple)
    }
    
    func setNavigationBarApperance () {
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.prefersLargeTitles = true
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.appColor(.purple)
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
    }

}
