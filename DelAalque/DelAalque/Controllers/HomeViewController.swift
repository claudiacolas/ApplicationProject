//
//  HomeViewController.swift
//  DelAalque
//
//  Created by Anxi on 6/9/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var newGameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Inici"
        setNavigationBarApperance()
        newGameButton.setTitle("Nova partida", for: .normal)
        newGameButton.layer.cornerRadius = 20
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.tintColor = UIColor.appColor(.orange)
    }
    
    func setNavigationBarApperance () {
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.prefersLargeTitles = true
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.appColor(.orange)
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
    }
    
    func hideTabBar(_ shouldHide: Bool) {
        tabBarController?.tabBar.isHidden = shouldHide
    }

}

