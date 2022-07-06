//
//  ViewController.swift
//  FirstSeminar
//
//  Created by 최은형 on 2022/07/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
    }

    @IBAction func changeButtonClicked(_ sender: Any) {
        if nameTextField.text?.isEmpty == false && phoneNumberTextField.text?.isEmpty == false {
            titleLabel.text = "\(nameTextField.text!)의 번호는 \(phoneNumberTextField.text!)입니다"
        } else {
            titleLabel.text = ""
        }
    }
    
}

