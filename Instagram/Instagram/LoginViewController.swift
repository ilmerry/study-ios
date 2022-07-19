//
//  LoginViewController.swift
//  Instagram
//
//  Created by 최은형 on 2022/07/19.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    var email = String()
    var password = String()
    var userInfo: UserInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupAttribute()
    }
    @IBAction func emailTextFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        // 로그인 버튼 활성화
        self.loginButton.backgroundColor = text.isValidEmail() ? .facebookColor : .disabledButtonColor
        
        self.email = text
    }
    
    @IBAction func passwordTextFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""

        self.loginButton.backgroundColor = text.count > 2 ? .facebookColor : .disabledButtonColor
        
        self.password = text
    }
    
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
        guard let userInfo = self.userInfo else { return }
        if userInfo.email == self.email
            && userInfo.password == self.password {
            // 만약 가입시에 입력한 정보와 로그인tf에 입력한 정보가 같다면
            // 다음화면으로 이동
            let vc = storyboard?.instantiateViewController(withIdentifier: "TestVC") as! TestViewController
                self.present(vc, animated: true, completion: nil)
        } else {
        }
    }
    
    @IBAction func registerButtonDidTap(_ sender: UIButton) {
        // 1. 스토리보드 생성
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // 2. VC 생성
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterVC") as! RegisterViewController
        
        // 3. 화면전환
//        self.present(registerViewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(registerViewController, animated: true)
        
        registerViewController.userInfo = { [weak self] (userInfo) in
            // 회원가입에서 정보 넘어왔으면 login 버튼 활성화되도록 userInfo에 정보 전달
            self?.userInfo = userInfo
        }
    }
    
    private func setupAttribute() {
        let text1 = "계정이 없으신가요?"
        let text2 = "가입하기"

        // 첫번째 텍스트의 폰트
        let font1 = UIFont.systemFont(ofSize: 13)
        // 두번째 텍스트의 폰트
        let font2 = UIFont.boldSystemFont(ofSize: 13)

        let color1 = UIColor.darkGray
        let color2 = UIColor.facebookColor

        let attributes = generateButtonAttribute(self.registerButton,
            texts: text1, text2,
            fonts: font1, font2,
            colors: color1, color2)

        self.registerButton.setAttributedTitle(attributes, for: .normal)
    }
}
