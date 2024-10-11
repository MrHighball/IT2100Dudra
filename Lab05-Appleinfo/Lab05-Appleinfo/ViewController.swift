//
//  ViewController.swift
//  Lab05-Appleinfo
//
//  Created by Benjamin Dudra on 10/11/24.
//
import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webApple: WKWebView!
    @IBOutlet weak var appleLink: UISegmentedControl!
    
    @IBAction func changeAppleLink(_ sender: Any) {
        var appleURLString = ""
        
        switch appleLink.selectedSegmentIndex {
        case 0:
            appleURLString = "https://en.wikipedia.org/wiki/Apple_Inc."
        case 1:
            appleURLString = "https://en.wikipedia.org/wiki/IOS"
        case 2:
            appleURLString = "https://en.wikipedia.org/wiki/Xcode"
        case 3:
            appleURLString = "https://en.wikipedia.org/wiki/Swift_(programming_language)"
        default:
            appleURLString = "https://en.wikipedia.org/wiki/Apple_Inc."
        }
        
        if let myURL = URL(string: appleURLString) {
            let myRequest = URLRequest(url: myURL)
            webApple.load(myRequest)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the default Apple page after the view is loaded
        if let myURL = URL(string: "https://en.wikipedia.org/wiki/Apple_Inc.") {
            let myRequest = URLRequest(url: myURL)
            webApple.load(myRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
