//
//  ViewController.swift
//  CreativeAppMod4
//
//  Created by Ben Berman on 10/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var hijinksLabel: UILabel!
    @IBOutlet weak var jaggedLabel: UILabel!
    @IBOutlet weak var shoppingLabel: UILabel!
    
    @IBOutlet weak var controller: UISegmentedControl!
    
    
    @IBOutlet weak var shawtyButton: UIButton!
    @IBOutlet weak var daBabyButton: UIButton!
    @IBOutlet weak var randomButton: UIButton!
    
    @IBOutlet weak var shawtyOutlet: UITextField!
    @IBOutlet weak var babyOutletOne: UITextField!
    @IBOutlet weak var babyOutletTwo: UITextField!
    @IBOutlet weak var babyOutletThree: UITextField!
    
    var whichOne = 0
    var rand: [Int] = [1, 2, 3]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.layer.borderWidth = 1
        
        shawtyButton.layer.borderWidth = 1
        shawtyButton.layer.cornerRadius = 10
        daBabyButton.layer.borderWidth = 1
        daBabyButton.layer.cornerRadius = 10
        randomButton.layer.borderWidth = 1
        randomButton.layer.cornerRadius = 15
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "toShawty"){
            let nvc = segue.destination as! ShawtyController
            nvc.str = shawtyOutlet.text!
            nvc.adjective = babyOutletOne.text!
            nvc.verb = babyOutletTwo.text!
            nvc.noun = babyOutletThree.text!
            nvc.views = whichOne
            
        }
        
    }
    @IBAction func shawtyButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "error!", message: "missing response", preferredStyle: .alert)
        let action = UIAlertAction(title: "sorry bossman", style: .default, handler: nil)
        if(shawtyOutlet.text == ""){
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        } else{
            whichOne = 4
            performSegue(withIdentifier: "toShawty", sender: nil)
        }
    }
    
    @IBAction func daBabyButton(_ sender: Any) {
        let alert = UIAlertController(title: "error!", message: "missing response(s)", preferredStyle: .alert)
        let action = UIAlertAction(title: "sorry bossman", style: .default, handler: nil)
        if(babyOutletOne.text == "" || babyOutletTwo.text == "" || babyOutletThree.text == ""){
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        } else{
            whichOne = 5
            performSegue(withIdentifier: "toShawty", sender: nil)
        }
    }
    
    @IBAction func randomButton(_ sender: UIButton) {
        let option = Int.random(in: 1..<4)
        if(option == 1){
            performSegue(withIdentifier: "StartToHawaii", sender: nil)
        } else if (option == 2){
            performSegue(withIdentifier: "StartToJob", sender: nil)
        } else if (option == 3){
            performSegue(withIdentifier: "StartToShopping", sender: nil)
        }
    }
    
    @IBAction func controller(_ sender: UISegmentedControl) {
        if(controller.selectedSegmentIndex == 0){
            performSegue(withIdentifier: "StartToHawaii", sender: nil)
            
        }else if(controller.selectedSegmentIndex == 1){
            performSegue(withIdentifier: "StartToJob", sender: nil)
            
        }else if(controller.selectedSegmentIndex == 2){
            performSegue(withIdentifier: "StartToShopping", sender: nil)
            
        }
    }
    
    
}

