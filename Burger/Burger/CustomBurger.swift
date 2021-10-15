import UIKit

class CustomBurger: UIViewController {

    @IBOutlet weak var pattyLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var baconLabel: UILabel!
    @IBOutlet weak var onionLabel: UILabel!
    @IBOutlet weak var pickleLabel: UILabel!
    @IBOutlet weak var lettuceLabel: UILabel!
    @IBOutlet weak var tomatoLabel: UILabel!
    @IBOutlet weak var eggLabel: UILabel!
    @IBOutlet weak var chuckLabel: UILabel!
    
    
    @IBOutlet weak var pattyController: UISegmentedControl!
    @IBOutlet weak var cheeseController: UISegmentedControl!
    @IBOutlet weak var doneController: UISegmentedControl!
    
    @IBOutlet weak var baconSwitch: UISwitch!
    @IBOutlet weak var onionSwitch: UISwitch!
    @IBOutlet weak var pickleSwitch: UISwitch!
    @IBOutlet weak var lettuceSwitch: UISwitch!
    @IBOutlet weak var tomatoSwitch: UISwitch!
    @IBOutlet weak var eggSwitch: UISwitch!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var viewButton: UIButton!
    
    var pattyNumber: Int = 0
    var selectedDoneness: Int = 0
    var selectedCheese: Int = 0
    var bacon: Bool = false
    var onion: Bool = false
    var pickle: Bool = false
    var tomato: Bool = false
    var egg: Bool = false
    var lettuce: Bool = false
    
    var pass: [Burger] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pattyLabel.layer.borderWidth = 1
        cheeseLabel.layer.borderWidth = 1
        baconLabel.layer.borderWidth = 1
        onionLabel.layer.borderWidth = 1
        pickleLabel.layer.borderWidth = 1
        lettuceLabel.layer.borderWidth = 1
        tomatoLabel.layer.borderWidth = 1
        eggLabel.layer.borderWidth = 1
        
        pattyController.layer.borderWidth = 1
        cheeseController.layer.borderWidth = 1
        doneController.layer.borderWidth = 1
        
        addButton.layer.borderWidth = 1
        viewButton.layer.borderWidth = 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if(isMovingFromParent){
            performSegue(withIdentifier: "toReceipt", sender: nil)
            chuckLabel.text = ""
        }
    }
    
    @IBAction func baconSwitch(_ sender: UISwitch) {
        if(baconSwitch.isOn == true){
            bacon = true
        } else{
            bacon = false
        }
    }
    
    @IBAction func onionSwitch(_ sender: UISwitch) {
        if(onionSwitch.isOn == true){
            bacon = true
        } else{
            bacon = false
        }
    }
    
    @IBAction func pickleSwitch(_ sender: UISwitch) {
        if(pickleSwitch.isOn == true){
            bacon = true
        } else{
            bacon = false
        }
    }
    
    @IBAction func tomatoSwitch(_ sender: UISwitch) {
        if(tomatoSwitch.isOn == true){
            bacon = true
        } else{
            bacon = false
        }
    }
    
    @IBAction func eggSwitch(_ sender: UISwitch) {
        if(eggSwitch.isOn == true){
            bacon = true
        } else{
            bacon = false
        }
    }
    
    @IBAction func lettuceSwitch(_ sender: UISwitch) {
        if(lettuceSwitch.isOn == true){
            bacon = true
        } else{
            bacon = false
        }
    }
    
    @IBAction func pattyController(_ sender: UISegmentedControl) {
        if(pattyController.selectedSegmentIndex == 0){
            pattyNumber = 1
        } else if (pattyController.selectedSegmentIndex == 1){
            pattyNumber = 2
        } else if (pattyController.selectedSegmentIndex == 2){
            pattyNumber = 3
        }
    }
    
    @IBAction func cheeseController(_ sender: UISegmentedControl) {
        if(cheeseController.selectedSegmentIndex == 0){
            selectedCheese = 1
        } else if (cheeseController.selectedSegmentIndex == 1){
            selectedCheese = 2
        } else if (cheeseController.selectedSegmentIndex == 2){
            selectedCheese = 3
        }
    }
    
    @IBAction func doneController(_ sender: UISegmentedControl) {
        if(doneController.selectedSegmentIndex == 0){
            selectedDoneness = 1
        } else if (doneController.selectedSegmentIndex == 1){
            selectedDoneness = 2
        } else if (doneController.selectedSegmentIndex == 2){
            selectedDoneness = 3
        }
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        let customBurger = Burger.init(inType: 0, doneness: selectedDoneness)
        customBurger.pricing(pattyNumber: pattyNumber, cheeseType: selectedCheese, done: selectedDoneness, bacon: bacon, onions: onion, pickle: pickle, tomato: tomato, egg: egg, lettuce: lettuce)
        pass.append(customBurger)
        chuckLabel.text = "Added, my friend"
        print("added custom burger")
        baconSwitch.isOn = false
        onionSwitch.isOn = false
        pickleSwitch.isOn = false
        tomatoSwitch.isOn = false
        eggSwitch.isOn = false
        lettuceSwitch.isOn = false
        doneController.selectedSegmentIndex = UISegmentedControl.noSegment
        pattyController.selectedSegmentIndex = UISegmentedControl.noSegment
        cheeseController.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        print("yes")
        if(segue.identifier == "toReceipt2"){
            let nvc = segue.destination as! Receipt
            nvc.incoming += pass
        } else{
            
        }
    
        
}
}

