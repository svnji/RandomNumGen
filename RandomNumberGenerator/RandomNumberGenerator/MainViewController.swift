//
//  MainViewController.swift
//  RandomNumberGenerator
//
//  Created by Daddy on 08/10/2024.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var randomNumViewer: UILabel!
    @IBOutlet weak var toTextField: UITextField!
    @IBOutlet weak var fromTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func generateBtnTapped(_ sender: Any) {
        implementRandomNumber()
    }

    func implementRandomNumber() {
        guard let fromText = fromTextField.text,
              let toText = toTextField.text,
              let fromInt = Int(fromText),
              let toInt = Int(toText),
              fromInt <= toInt else {
            randomNumViewer.text = "Invalid input"
            return
        }
        let randomNum = Int.random(in: fromInt...toInt)

        
        randomNumViewer.text = String(randomNum)
    }
}
