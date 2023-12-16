//
//  ProfileViewController.swift
//  DelAalque
//
//  Created by Anxi on 6/9/23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var usernameTitle: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameBackground: UIView!
    
    @IBOutlet weak var streakTitle: UILabel!
    @IBOutlet weak var streakBackground: UIView!
    @IBOutlet weak var streakNumber: UILabel!
    
    @IBOutlet weak var rankingTitle: UILabel!
    @IBOutlet weak var rankingBackground: UIView!
    @IBOutlet weak var rankingNumber: UILabel!
    
    @IBOutlet weak var percentatgeTitle: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var totalTitle: UILabel!
    @IBOutlet weak var totalBackground: UIView!
    @IBOutlet weak var totalNumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Perfil"
        setNavigationBarApperance()
        usernameTitle.text = "Nom d'usuari"
        usernameLabel.text = "nomusuari"
        usernameBackground.layer.cornerRadius = 20
        
        streakTitle.text = "Ratxa"
        streakBackground.layer.cornerRadius = streakBackground.frame.size.width / 2
        streakNumber.text = "#"
        
        rankingTitle.text = "Rànquing"
        rankingBackground.layer.cornerRadius = rankingBackground.frame.size.width / 2
        rankingNumber.text = "#"
        
        percentatgeTitle.text = "Percentatge de partides guanyades"
        progressView.layer.cornerRadius = 20
        
        totalTitle.text = "Partides jugades"
        totalBackground.layer.cornerRadius = 20
        totalNumber.text = "#"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.tintColor = UIColor.appColor(.pink)
    }

    func setNavigationBarApperance () {
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.prefersLargeTitles = true
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.appColor(.pink)
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.standardAppearance = appearance
    }

}
