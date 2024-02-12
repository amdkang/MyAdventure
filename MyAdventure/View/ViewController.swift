//
//  ViewController.swift
//  MyAdventure
//
//  Created by Amenda Kang on 2/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIStackView!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    var adventureLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.numberOfLines = 0
        output.lineBreakMode = .byWordWrapping
        updateUI()
    }

    @IBAction func optionSelected(_ sender: UIButton) {
        let userSelection = sender.titleLabel!.text!
        let optionNumber = adventureLogic.getOptionNumber(userSelection)
        let isFinalPrompt = adventureLogic.isFinal()
        if isFinalPrompt == false {
            adventureLogic.increaseIndex(optionNumber)
        } else {
            adventureLogic.resetIndex()
        }
        updateUI()
    }
    
    @objc func updateUI() {
        output.text = adventureLogic.getNextPrompt()
        background.image = UIImage(named: String(adventureLogic.getImageName()))
        option1.setTitle(adventureLogic.getChoiceOne(), for: .normal)
        option2.setTitle(adventureLogic.getChoiceTwo(), for: .normal)
    }
}

