//
//  CheckViewController.swift
//  KakaoLogin
//
//  Created by 최은형 on 2022/07/11.
//

import UIKit

class CheckViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    var email: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setEmail()
    }
    
    func setEmail() {
        if let email = self.email{
            messageLabel.text = "\(email)님 환영합니다"
        }
    }
    
    @IBAction func checkButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
