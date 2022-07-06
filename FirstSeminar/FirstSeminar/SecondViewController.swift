//
//  SecondViewController.swift
//  FirstSeminar
//
//  Created by 최은형 on 2022/07/06.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    var message: String?    // 넘겨받을 데이터
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setLabel()
    }
    
    func setLabel() {
        if let msg = self.message{
            messageLabel.text = msg
        }
    }

    @IBAction func backButtonClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
