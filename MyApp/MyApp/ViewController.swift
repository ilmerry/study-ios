import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var countDown = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onClickButton(_ sender: Any) {
        countDown = countDown - 5;
        
        myLabel.text = String(countDown);
        
        if countDown <= 10  {
            myLabel.textColor = .red;
        } else if countDown <= 50 {
            myLabel.textColor = .blue;
        }
    }
    
}

