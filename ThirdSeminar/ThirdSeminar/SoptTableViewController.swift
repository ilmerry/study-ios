//
//  SoptTableViewController.swift
//  ThirdSeminar
//
//  Created by 최은형 on 2022/07/16.
//

import UIKit

class SoptViewController: UIViewController {
    @IBOutlet weak var serviceTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

}

extension SoptViewController : UITableViewDelegate {
    
}
