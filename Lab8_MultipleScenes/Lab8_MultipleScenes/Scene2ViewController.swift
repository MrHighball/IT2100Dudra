//
//  Scene2ViewController.swift
//  Lab8_MultipleScenes
//
//  Created by Benjamin Dudra on 11/3/24.
//

import UIKit

class Scene2ViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
        var name: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            print("Name passed from Scene 1:", name)  // This will print in the debug console
            greetingLabel.text = "Hello, \(name)"
        } else {
            print("Name was not set")
        }
    }

  
}
