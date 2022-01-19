//
//  ViewController.swift
//  Kadai1
//
//  Created by 田岸将勝 on 2022/01/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var textField3: UITextField!
    @IBOutlet private weak var textFieid4: UITextField!
    @IBOutlet private weak var textField5: UITextField!
    @IBOutlet private weak var totalLabel: UILabel!
    
    @IBAction private func pressButton(_ sender: UIButton) {
        totalLabel.text = String(calculate())
    }
    
    private func calculate() -> Int {
        let num1 = textField1.textToInt
        let num2 = textField2.textToInt
        let num3 = textField3.textToInt
        let num4 = textFieid4.textToInt
        let num5 = textField5.textToInt
        return num1 + num2 + num3 + num4 + num5
    }
}

extension UITextField {
    var textToInt: Int {
        let text = self.text
        let int = text
            .flatMap{Int($0)} ?? 0
        return int
    }
}

