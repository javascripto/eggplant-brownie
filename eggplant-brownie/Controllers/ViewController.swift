//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Yuri Alves de Almeida on 02/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField?
    
    @IBOutlet var happiness: UITextField?

    @IBAction
    func doAction(_ sender: UIButton) {
        guard
            let name = nameTextField?.text,
            let happinessText = happiness?.text else { return }
        guard
            let happiness = Int(happinessText) else { return }
        let meal = Meal(name: name, happiness: happiness)
        print(meal)
    }
}

