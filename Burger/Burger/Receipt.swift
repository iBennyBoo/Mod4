import UIKit

class Receipt: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    var incoming: [Burger] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.layer.borderWidth = 1
        for b in incoming{
            infoLabel.text! += "\(b.toString())"
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue){
        print("receipt unwind works")
        
    }
    
    
}
