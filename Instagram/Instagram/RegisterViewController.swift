//
//  RegisterViewController.swift
//  Instagram
//
//  Created by 최은형 on 2022/07/19.
//

import UIKit

class RegisterViewController: UIViewController {
    // MARK: - Properties
    var isValidEmail = false{
        didSet { // 프로퍼티 옵저버
            self.validateUserInfo()
        }
    }
    var isValidName = false{
        didSet { // 프로퍼티 옵저버
            self.validateUserInfo()
        }
    }
    var isValidNickName = false{
        didSet { // 프로퍼티 옵저버
            self.validateUserInfo()
        }
    }
    var isValidPassword = false{
        didSet { // 프로퍼티 옵저버
            self.validateUserInfo()
        }
    }
    @IBOutlet weak var popToLoginButton: UIButton!
    
    @IBOutlet weak var signupButton: UIButton!
    
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
        setupAttribute()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil
    }
    
    // MARK: - Actions
    @objc
    func textFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
            
        switch sender {
        case emailTextField:
            self.isValidEmail = text.isValidEmail()
            print(isValidEmail)

        // 두글자 이상이어야 True
        case nameTextField:
            self.isValidName = text.count > 2

        case nicknameTextField:
            self.isValidNickName = text.count > 2

        case passwordTextField:
            self.isValidPassword = text.isValidPassword()
            print(isValidPassword)
            
        default:
            fatalError("Missing TextField...")
        }
    }
    @IBAction func backButtonDidTap(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Helpers
    private func setupTextField() {
        textFields.forEach { tf in
            tf.addTarget(self,
                         action: #selector(textFieldEditingChanged(_:)),
                         for: .editingChanged)
        }
    }
    // 사용자가 입력한 회원정보 확인 -> UI 업데이트
    private func validateUserInfo() {
        if isValidEmail
            && isValidName
            && isValidNickName
            && isValidPassword {
            self.signupButton.backgroundColor = UIColor.facebookColor
        } else {
            self.signupButton.backgroundColor = .disabledButtonColor
        }
    }
    
    private func setupAttribute() {
        let text1 = "계정이 있으신가요?"
        let text2 = "로그인"

        let font1 = UIFont.systemFont(ofSize: 13)
        let font2 = UIFont.boldSystemFont(ofSize: 13)

        let color1 = UIColor.darkGray
        let color2 = UIColor.facebookColor

        let attributes = generateButtonAttribute(self.popToLoginButton,
            texts: text1, text2,
            fonts: font1, font2,
            colors: color1, color2)

        self.popToLoginButton.setAttributedTitle(attributes, for: .normal)
    }
}

// 정규표현식
extension String {
    // 대문자, 소문자, 특수문자, 숫자 8자 이상일 때 -> True
    func isValidPassword() -> Bool {
        let regularExpression = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@$!%*?&])[A-Za-z\\d$@$!%*?&]{8,}"
        let passwordValidation = NSPredicate.init(format: "SELF MATCHES %@", regularExpression)
        
        return passwordValidation.evaluate(with: self)
    }
    
    // @ 2글자
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
