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
        
        // sample이라는 신호를 받을 옵저버를 이 VC에 달아줌
        NotificationCenter.default.addObserver(self, selector: #selector(dataReceived), name: NSNotification.Name("sample"), object: nil)
        
        // 대리자 선언
        //nextVC.delegate = self
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc func dataReceived(notification: NSNotification) {
        if let text = notification.object as? String {
            // object가 무슨 형인지 모르기 때문에 String으로 다운 캐스팅해서 가져옴
            dataLabel.text = text
        }
    }

}
