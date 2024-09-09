//
//  ViewController.swift
//  Lab01-aJoke
//
//  Created by Benjamin Dudra on 9/9/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var jokeLabel: UILabel!
    @IBOutlet var punchlineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showJoke(_ sender: UIButton){
        print("Joke Button Pressed")
        jokeLabel.text = "There are 3 types of people in the world"
    }
    @IBAction func showPunchLine(_ sender: UIButton){
        print("Punchline buttone pressed")
        punchlineLabel.text = "Those who can count, and those who can't"
    }
}
