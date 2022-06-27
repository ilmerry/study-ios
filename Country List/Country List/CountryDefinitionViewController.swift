//
//  CountryDefinitionViewController.swift
//  Country List
//
//  Created by 최은형 on 2022/06/27.
//

import UIKit

class CountryDefinitionViewController: UIViewController {

    @IBOutlet weak var bigFlagLabel: UILabel!
    @IBOutlet weak var countryDefinitionLabel: UILabel!
    
    var country = Country();
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bigFlagLabel.text = country.flag;
        countryDefinitionLabel.text = "\(country.name) flag is \(country.flag). It was founded in \(country.year). It is \(country.region). The population is \(country.population) million."
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
