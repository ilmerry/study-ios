//
//  FirstViewController.swift
//  FirstSeminar
//
//  Created by 최은형 on 2022/07/06.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButtonClicked(_ sender: Any) {
        // 다음 창을 클래스로 하는 nextVC 인스턴스 생성
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        // nextVC의 프로퍼티 변경
        nextVC.message = messageTextField.text
        
//        nextVC.modalPresentationStyle = .fullScreen
//        nextVC.modalTransitionStyle = .crossDissolve
        
//        self.present(nextVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(nextVC, animated: true)
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
