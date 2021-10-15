import UIKit

class ShawtyController: UIViewController {

    var str: String = ""
    var adjective: String = ""
    var verb: String = ""
    var noun: String = ""
    
    var views: Int!
    var stories: [MadLib] = []
    var story : MadLib!
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var viewButton: UIButton!
    
    override func viewDidLoad() {
        labelOutlet.layer.borderWidth = 1
        viewButton.layer.borderWidth = 1
        viewButton.layer.cornerRadius = 5
        super.viewDidLoad()
        if (views == 1){
            labelOutlet.text = "\(story.returnStory())"
            
        } else if (views == 2){
            labelOutlet.text = "\(story.returnStory())"
             
        } else if (views == 3){
            labelOutlet.text = "\(story.returnStory())"
            
        } else if (views == 4){
            labelOutlet.text = "My Uncle wants to go to the \(str)"
         
        } else if (views == 5){
            labelOutlet.text = "The \(adjective) fish wanted to \(verb) at the \(noun)"
            
        }
        
    }
    
    
}
