//
//  ViewController.swift
//  Lab10_TransitionsAndPresentations
//
//  Created by Benjamin Dudra on 11/24/24.
//

import UIKit

class ViewController: UIViewController {

    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        button.setTitle("Tap me", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }


    @objc private func didTapButton() {
        let vc = SecondViewController()
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
    }
}

