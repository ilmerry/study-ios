//
//  MainViewController.swift
//  ThirdSeminar
//
//  Created by 최은형 on 2022/07/15.
//

import UIKit

class MainViewController: UIViewController, SampleProtocol {
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func dataSend(data: String) {
        dataLabel.text = data
    }
    
    @IBAction func nextButtonClicked(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "DelegateViewController") as? DelegateViewController else {return}
        
        // 대리자 선언
        nextVC.delegate = self
        
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
