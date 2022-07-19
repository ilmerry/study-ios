//
//  RegisterViewController.swift
//  Instagram
//
//  Created by 최은형 on 2022/07/19.
//

import UIKit

class RegisterViewController: UIViewController {
    // MARK: - Properties
    var isValidEmail = false
    var isValidName = false
    var isValidNickName = false
    var isValidPassword = false

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var textFields: [UITextField] {
        [emailTextField, nameTextField, nicknameTextField, passwordTextField]
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
    }
    
    // MARK: - Actions
    @objc
    func textFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
            
        switch sender {
        case emailTextField:
            print("email")
        case nameTextField:
            print("name")
        case nicknameTextField:
            print("nickname")
        case passwordTextField:
            print("password")
        default:
            fatalError("Missing TextField...")
        }
    }
    
    // MARK: - Helpers
    private func setupTextField() {
        textFields.forEach { tf in
            tf.addTarget(self,
                         action: #selector(textFieldEditingChanged(_:)),
                         for: .editingChanged)
        }
    }
}
