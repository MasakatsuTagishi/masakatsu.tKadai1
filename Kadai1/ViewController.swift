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
        let num1 = textField1.textToInt ?? 0
        let num2 = textField2.textToInt ?? 0
        let num3 = textField3.textToInt ?? 0
        let num4 = textFieid4.textToInt ?? 0
        let num5 = textField5.textToInt ?? 0
        return num1 + num2 + num3 + num4 + num5
    }
}

extension UITextField {
    var textToInt: Int? {
        text.flatMap { Int($0) }
    }
}
