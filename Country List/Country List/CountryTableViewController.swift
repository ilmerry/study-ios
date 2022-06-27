
import UIKit

class CountryTableViewController: UITableViewController {

    let flags = ["🇳🇴", "🇳🇿", "🇰🇷", "🇧🇷"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // 섹션 나눌 수 있음
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 셀의 개수를 리턴하는 함수
        return flags.count;
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)

        // 셀에 무엇을 보여줄지 지정하는 함수
        cell.textLabel?.text = flags[indexPath.row];

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCountry = flags[indexPath.row];
        // 보내는 이를 현재 셀로 지정하고 segue way 수행
        performSegue(withIdentifier: "DefinitionSegue", sender: selectedCountry)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defOfViewController = segue.destination as! CountryDefinitionViewController;
        let selectedCountry = sender as! String;
        
        defOfViewController.country = selectedCountry;
    }
}
