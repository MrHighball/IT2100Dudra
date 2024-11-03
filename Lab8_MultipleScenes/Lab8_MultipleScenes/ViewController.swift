//
//  ViewController.swift
//  Lab8_MultipleScenes
//
//  Created by Benjamin Dudra on 11/3/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func unwindToScene1(_ segue: UIStoryboardSegue) {
        // Any code to execute when returning to Scene 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup if needed
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToScene2" {
            let destinationVC = segue.destination as? Scene2ViewController
            destinationVC?.name = nameTextField.text
        }
        
    }
}
