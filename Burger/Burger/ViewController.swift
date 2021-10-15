import UIKit

class ViewController: UIViewController {

    var burgers: [Burger] = []
    var selectedBurger: Int = 0
    var selectedDoneness: Int = 0
    
    @IBOutlet weak var bobsButton: UIButton!
    @IBOutlet weak var childButton: UIButton!
    @IBOutlet weak var doubleButton: UIButton!
    @IBOutlet weak var turkeyButton: UIButton!
    @IBOutlet weak var veggieButton: UIButton!
    @IBOutlet weak var possibleButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var viewButton: UIButton!
    @IBOutlet weak var customButton: UIButton!
    
    
    @IBOutlet weak var chuckLabel: UILabel!
    
    @IBOutlet weak var controllerOutlet: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bobsButton.layer.borderWidth = 1
        childButton.layer.borderWidth = 1
        doubleButton.layer.borderWidth = 1
        turkeyButton.layer.borderWidth = 1
        veggieButton.layer.borderWidth = 1
        possibleButton.layer.borderWidth = 1
        addButton.layer.borderWidth = 1
        viewButton.layer.borderWidth = 1
        customButton.layer.borderWidth = 1
        controllerOutlet.layer.borderWidth = 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        if(isMovingFromParent){
        performSegue(withIdentifier: "toCustomBurger", sender: nil)
        chuckLabel.text = ""
        }
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        var type = selectedBurger
        var done = selectedDoneness
        let burger = Burger.init(inType: selectedBurger, doneness: selectedDoneness)
        burgers.append(burger)
        chuckLabel.text = "Added, my friend"
        print("added burger")
        controllerOutlet.selectedSegmentIndex = UISegmentedControl.noSegment
        bobsButton.backgroundColor = UIColor.white
        childButton.backgroundColor = UIColor.white
        doubleButton.backgroundColor = UIColor.white
        turkeyButton.backgroundColor = UIColor.white
        veggieButton.backgroundColor = UIColor.white
        possibleButton.backgroundColor = UIColor.white
    }
    
    @IBAction func bobsButton(_ sender: UIButton) {
        selectedBurger = 1
        chuckLabel.text = "Currently Selected Bob's Burger"
        bobsButton.backgroundColor = UIColor.systemYellow
        childButton.backgroundColor = UIColor.white
        doubleButton.backgroundColor = UIColor.white
        turkeyButton.backgroundColor = UIColor.white
        veggieButton.backgroundColor = UIColor.white
        possibleButton.backgroundColor = UIColor.white
    }
    
    @IBAction func childButton(_ sender: UIButton) {
        selectedBurger = 2
        chuckLabel.text = "Currently Selected Child Burger"
        bobsButton.backgroundColor = UIColor.white
        childButton.backgroundColor = UIColor.systemYellow
        doubleButton.backgroundColor = UIColor.white
        turkeyButton.backgroundColor = UIColor.white
        veggieButton.backgroundColor = UIColor.white
        possibleButton.backgroundColor = UIColor.white
    }
    
    @IBAction func doubleButton(_ sender: UIButton) {
        selectedBurger = 3
        chuckLabel.text = "Currently Selected Double Burger"
        bobsButton.backgroundColor = UIColor.white
        childButton.backgroundColor = UIColor.white
        doubleButton.backgroundColor = UIColor.systemYellow
        turkeyButton.backgroundColor = UIColor.white
        veggieButton.backgroundColor = UIColor.white
        possibleButton.backgroundColor = UIColor.white
    }
    @IBAction func turkeyBurger(_ sender: UIButton) {
        selectedBurger = 4
        chuckLabel.text = "Currently Selected Turkey Burger"
        bobsButton.backgroundColor = UIColor.white
        childButton.backgroundColor = UIColor.white
        doubleButton.backgroundColor = UIColor.white
        turkeyButton.backgroundColor = UIColor.systemYellow
        veggieButton.backgroundColor = UIColor.white
        possibleButton.backgroundColor = UIColor.white
    }
    @IBAction func veggieButton(_ sender: UIButton) {
        selectedBurger = 5
        chuckLabel.text = "Currently Selected Veggie Burger"
        bobsButton.backgroundColor = UIColor.white
        childButton.backgroundColor = UIColor.white
        doubleButton.backgroundColor = UIColor.white
        turkeyButton.backgroundColor = UIColor.white
        veggieButton.backgroundColor = UIColor.systemYellow
        possibleButton.backgroundColor = UIColor.white
    }
    @IBAction func possibleButton(_ sender: UIButton) {
        selectedBurger = 6
        chuckLabel.text = "Currently Selected Possible Burger"
        bobsButton.backgroundColor = UIColor.white
        childButton.backgroundColor = UIColor.white
        doubleButton.backgroundColor = UIColor.white
        turkeyButton.backgroundColor = UIColor.white
        veggieButton.backgroundColor = UIColor.white
        possibleButton.backgroundColor = UIColor.systemYellow
    }
    @IBAction func controllerOutlet(_ sender: UISegmentedControl) {
        if(controllerOutlet.selectedSegmentIndex == 0){
            selectedDoneness = 1
            print("1")
        } else if (controllerOutlet.selectedSegmentIndex == 1){
            selectedDoneness = 2
            print("2")
        } else if (controllerOutlet.selectedSegmentIndex == 2){
            selectedDoneness = 3
            print("3")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        print("yes")
        if(segue.identifier == "toReceipt"){
            let nvc = segue.destination as! Receipt
            nvc.incoming += burgers
        } else if (segue.identifier == "toCustomBurger"){
            let nvc = segue.destination as! CustomBurger
            nvc.pass += burgers
        }
    }
    
    
    
}

