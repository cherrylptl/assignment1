import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var toggle = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBOutlet weak var displayLable: UILabel!
    
    @IBAction func onTapMinusButton(_ sender: Any) {
        
        count = toggle ? count - 2 : count - 1
        
        displayLable.text=String(count)
    }
    
    @IBAction func onTapPlusButton(_ sender: Any) {
        
        count = toggle ? count + 2 : count + 1
          
        displayLable.text=String(count)
    }
    
    @IBAction func onTapStepButton(_ sender: Any) {
        toggle = true
    }
    
   
    @IBAction func onTapResetButton(_ sender: Any) {
        toggle = false
        count = 0
        displayLable.text=String(count)
    }
    
}

