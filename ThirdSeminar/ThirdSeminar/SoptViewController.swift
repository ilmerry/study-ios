//
//  SoptViewController.swift
//  ThirdSeminar
//
//  Created by 최은형 on 2022/07/16.
//

import UIKit

class SoptViewController: UIViewController {
    @IBOutlet weak var serviceTableView: UITableView!
    
    var serviceList : [ServiceListDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setServiceList()
        serviceTableView.delegate = self
        serviceTableView.dataSource = self
        serviceTableView.separatorStyle = .none
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func setServiceList() {
        serviceList.append(contentsOf: [
            ServiceListDataModel(iconImageName: "soptAppIcon1", title: "기록장", subtitle: "고양이 입맛 정리 서비스"),
            ServiceListDataModel(iconImageName: "soptAppIcon2", title: "포켓유니브", subtitle: "올인원 대학생 관리 플랫폼"),
            ServiceListDataModel(iconImageName: "soptAppIcon3", title: "MOMO", subtitle: "책 속의 문장과 함께 글쓰기")
        ])
    }
}

extension SoptViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 106
    }
}

extension SoptViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let serviceCell = tableView.dequeueReusableCell(withIdentifier: SoptTableViewCell.identifier, for: indexPath) as? SoptTableViewCell else { return UITableViewCell() }

        serviceCell.setData(imageName: serviceList[indexPath.row].iconImageName, title: serviceList[indexPath.row].title, subtitle: serviceList[indexPath.row].subtitle)

        return serviceCell
    }
    
    
}
