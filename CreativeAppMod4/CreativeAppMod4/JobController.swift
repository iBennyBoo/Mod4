import UIKit

class JobController: UIViewController {
    @IBOutlet weak var actionButton: UIButton!
    
    @IBOutlet weak var one: UITextField!
    @IBOutlet weak var two: UITextField!
    @IBOutlet weak var three: UITextField!
    @IBOutlet weak var four: UITextField!
    @IBOutlet weak var five: UITextField!
    @IBOutlet weak var six: UITextField!
    @IBOutlet weak var seven: UITextField!
    @IBOutlet weak var eight: UITextField!
    @IBOutlet weak var nine: UITextField!
    @IBOutlet weak var ten: UITextField!
    @IBOutlet weak var eleven: UITextField!
    
    var story: MadLib? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButton.layer.borderWidth = 1
        actionButton.layer.cornerRadius = 10
    }

    @IBAction func actionButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "error!", message: "missing response(s)", preferredStyle: .alert)
        let action = UIAlertAction(title: "sorry bossman", style: .default, handler: nil)
        if(one.text == "" || two.text == "" || three.text == "" || four.text == "" || five.text == "" || six.text == "" || seven.text == "" || eight.text == "" || nine.text == "" || ten.text == "" || eleven.text == ""){
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        } else{
            let job = MadLib.init(one: one.text!, two: two.text!, three: three.text!, four: four.text!, five: five.text!, six: six.text!, seven: seven.text!, eight: eight.text!, nine: nine.text!, ten: ten.text!, eleven: eleven.text!)
            story = job
            performSegue(withIdentifier: "JobToShawty", sender: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "JobToShawty"){
            let nvc = segue.destination as! ShawtyController
            nvc.views = 2
            nvc.story = story
            
        }
        
    }
    
}
