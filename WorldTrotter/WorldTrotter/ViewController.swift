//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Benjamin Dudra on 9/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label212: UILabel!
    @IBOutlet weak var labelDegreesFahrenheit: UILabel!
    @IBOutlet weak var labelIsReally: UILabel!
    @IBOutlet weak var label100: UILabel!
    @IBOutlet weak var labelDegreesCelsius: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
            gradientLayer.frame = view.bounds
            gradientLayer.colors = [
                UIColor.systemBlue.cgColor,
                UIColor.systemPurple.cgColor
            ]

            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
            view.layer.insertSublayer(gradientLayer, at: 0)
        
               label212.textAlignment = .center
               labelDegreesFahrenheit.textAlignment = .center
               labelIsReally.textAlignment = .center
               label100.textAlignment = .center
               labelDegreesCelsius.textAlignment = .center
        
            let spacer1 = UIView()
              let spacer2 = UIView()
              let spacer3 = UIView()
              let spacer4 = UIView()

              
              spacer1.translatesAutoresizingMaskIntoConstraints = false
              spacer2.translatesAutoresizingMaskIntoConstraints = false
              spacer3.translatesAutoresizingMaskIntoConstraints = false
              spacer4.translatesAutoresizingMaskIntoConstraints = false

            
              let stackView = UIStackView(arrangedSubviews: [
                  spacer1, label212, spacer2, labelDegreesFahrenheit, spacer3, labelIsReally, spacer4, label100, labelDegreesCelsius
              ])

        
              stackView.axis = .vertical
              stackView.alignment = .fill
              stackView.distribution = .equalSpacing
              stackView.spacing = 10

            
              view.addSubview(stackView)

             
              stackView.translatesAutoresizingMaskIntoConstraints = false

           
              NSLayoutConstraint.activate([
                  stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                  stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                  stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                  stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
              ])
    }


}

