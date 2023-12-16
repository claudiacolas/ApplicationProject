//
//  GameViewController.swift
//  DelAalque
//
//  Created by Anxi on 18/10/2023.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var pledgeButton: UIButton!
    @IBOutlet weak var givingUpButton: UIButton!
    @IBOutlet weak var writeYourNextWord: UILabel!
    @IBOutlet weak var lastWordTitle: UILabel!
    @IBOutlet weak var lastWord: UILabel!
    @IBOutlet weak var letter: UILabel!
    @IBOutlet weak var backgroundLetter: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var closeButton: UIBarButtonItem!
    
    var randomLetter: Character = "A"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Nom de la partida"
        
        textField.delegate = self
        
        lastWordTitle.text = "Última paraula"
        
        lastWord.text = "Finestra"
        
        backgroundLetter.layer.cornerRadius = 20
        
        writeYourNextWord.text = "Escriu la teva propera paraula"
        
        pledgeButton.setTitle("Penyora", for: .normal)
        pledgeButton.layer.cornerRadius = 30
        
        givingUpButton.setTitle("Em rendeixo", for: .normal)
        givingUpButton.layer.cornerRadius = 30
        
        generateRandomLetter()
        updateLetterOutlet()
    }
    
    func generateRandomLetter() {
        let alphabet = "ABCÇDEFGHIJKLMNOPQRSTUVWXYZ"
        if let randomChar = alphabet.randomElement() {
            randomLetter = randomChar
        }
    }

    func updateLetterOutlet() {
        letter.text = String(randomLetter)
    }
    
    @IBAction func givingUpButtonPressed(_ sender: UIButton) {
        let alertController = UIAlertController(title: "N'estàs segur?", message: "Si et rendeixes, perdràs la partida.", preferredStyle: .alert)
            
        alertController.addAction(UIAlertAction(title: "N'estic segur", style: .default, handler: { (_) in
            // Aquí ha de tornar a la pàgina d'inici
        }))
        
        present(alertController, animated: true, completion: nil)
    }
    
}

extension GameViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let inputWord = textField.text?.uppercased() else {
            textField.resignFirstResponder()
            return true
        }

        if let firstChar = inputWord.first, firstChar == randomLetter {
            lastWord.text = inputWord
            randomLetter = inputWord.last ?? randomLetter
            updateLetterOutlet()
        } else {
            let alertController = UIAlertController(title: "Torna-ho a intentar", message: "La paraula no comença amb la lletra correcta.", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Tu pots!", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }

        textField.text = "" // Neteja el camp de text
        textField.resignFirstResponder() // Amaga el teclat
        return true
    }
    
}

