//
//  DelegateViewController.swift
//  ThirdSeminar
//
//  Created by 최은형 on 2022/07/15.
//

import UIKit

protocol SampleProtocol
{
    func dataSend(data: String)
}

class DelegateViewController: UIViewController {
    @IBOutlet weak var dataTextField: UITextField!
    
    // var delegate : SampleProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dataSendButtonClicked(_ sender: Any) {
        if let text = dataTextField.text {
            // sample이라는 신호에 textfield의 text를 담아 보내겠다
            NotificationCenter.default.post(name: NSNotification.Name("sample"), object: text)
        }
        
        self.navigationController?.popViewController(animated: true)
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
