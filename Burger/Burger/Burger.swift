import Foundation
public class Burger{
    enum Burgers{
        case Bobs, Turkey, Child, Double, Veggie, Possible, Customized
    }
    enum Cooked{
        case Rare, Medium, Well
    }
    
    var price: Double = 0
    var name: String = ""
    var type: Burgers = .Bobs
    var cooked: Cooked = .Rare
    
    
    init(inType: Int, doneness: Int) {
        switch inType {
        case 1:
            type = .Bobs
            price = 6.99
            name = "Bob's Burger"
        case 2:
            type = .Child
            price = 4.99
            name = "Child Burger"
        case 3:
            type = .Double
            price = 3.99
            name = "Double Burger"
        case 4:
            type = .Turkey
            price = 6.99
            name = "Turkey Burger"
        case 5:
            type = .Veggie
            price = 4.99
            name = "Veggie Burger"
        case 6:
            type = .Possible
            price = 5.99
            name = "Possible Burger"
        default:
            price = 0
            name = "Custom Burger"
            type = .Customized
        }
        switch doneness {
        case 1:
            cooked = .Rare
        case 2:
            cooked = .Medium
        case 3:
            cooked = .Well
        default:
            cooked = .Medium
        }
    }
    func pricing(pattyNumber: Int, cheeseType: Int, done: Int, bacon: Bool, onions: Bool, pickle: Bool, tomato: Bool, egg: Bool, lettuce: Bool){
        switch pattyNumber {
        case 1:
            price += 1
        case 2:
            price += 2
        case 3:
            price += 3
        default:
            price += 0
        }
        
        switch cheeseType {
        case 1...3:
            price += 0.50
        default:
            price += 0
        }
        
        if(bacon == true){
            price += 0.50
        }
        if(onions == true){
            price += 0.50
        }
        if(pickle == true){
            price += 0.50
        }
        if(tomato == true){
            price += 0.50
        }
        if(egg == true){
            price += 0.50
        }
        if(lettuce == true){
            price += 0.50
        }

    }
    
    func toString() -> String{
        return "\(cooked) \(type): $\(price)\n"
    }
    
    
}
