//
//  LoginViewController.swift
//  DelAalque
//
//  Created by Anxi on 6/9/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Inicia sessió"
        navigationController?.navigationBar.prefersLargeTitles = true
        username.text = "Nom d'usuari o correu electrònic"
        password.text = "Contrasenya"
        loginButton.setTitle("Inicia sessió", for: .normal)
    }

}
