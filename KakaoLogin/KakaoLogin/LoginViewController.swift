//
//  LoginViewController.swift
//  KakaoLogin
//
//  Created by 최은형 on 2022/07/11.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginButtonClicked(_ sender: Any) {
        guard let checkVC = self.storyboard?.instantiateViewController(withIdentifier: "CheckViewController") as? CheckViewController else {return}
        
        checkVC.email = emailTextField.text
        
        // 확인 화면으로 이동
        self.present(checkVC, animated: true, completion: nil)
    }
    
    @IBAction func SigninButtonClicked(_ sender: Any) {
        guard let signVC = self.storyboard?.instantiateViewController(withIdentifier: "SigninViewController") as? SigninViewController else {return}
        
        self.navigationController?.pushViewController(signVC, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
