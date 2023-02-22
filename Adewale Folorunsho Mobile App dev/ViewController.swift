//
//  ViewController.swift
//  Adewale Folorunsho Mobile App dev
//
//  Created by Adewale Folorunsho on 2/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    @IBOutlet weak var numberofPetsSwitch: UISwitch!
    @IBOutlet weak var firstNameTextfield: UITextField!
    @IBOutlet weak var lastNameTextfield: UITextField!
    @IBOutlet weak var schoolNameTextfield: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numberOfPetsStepper(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfButton(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextfield.text!) \(lastNameTextfield.text!) and I attend \(schoolNameTextfield.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(numberofPetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message:introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you", style: .default, handler:nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}

