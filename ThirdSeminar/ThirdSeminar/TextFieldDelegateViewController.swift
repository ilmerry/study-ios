//
//  TextFieldDelegateViewController.swift
//  ThirdSeminar
//
//  Created by 최은형 on 2022/07/15.
//

import UIKit

class TextFieldDelegateViewController: UIViewController {
    @IBOutlet weak var sampleTextField: UITextField!
    @IBOutlet weak var sampleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleTextField.delegate = self
        // Do any additional setup after loading the view.
    }

}

extension TextFieldDelegateViewController : UITextFieldDelegate {
    // UITextViewDelegate 프로토콜 채택
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        sampleLabel.text = sampleTextField.text
        
        return true
    }
}
