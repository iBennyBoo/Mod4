import UIKit

func countHi(string str : String) -> Int{
    var str = str.lowercased()
    let pattern = "hi"
    var count = 0
    for _ in str{
        var range = str.range(of: "hi")
        if let r = range{
            count += 1
            str.removeSubrange(r)
        } else{
            break
        }
            
        }
    return count
}

func endOther(firstString first : String, secondString second : String) -> Bool{
    var first = first.lowercased()
    var second = second.lowercased()
    if (first.count > second.count){
        let two = second.suffix(second.count)
        if(two == first.suffix(second.count)){
            return true
        } else{
            return false
        }
        
    } else{
        let one = first.suffix(first.count)
        if(first == second.suffix(first.count)){
            return true
        } else{
            return false
        }
    }
}

func sumNumbers(string str : String) -> Int{
    var count = 0
    var string = str
    var numbers = ""
    var sum = 0
    for things in string{
        sum += 1
        for digits in 0...9 {
            if (things == Character.init(String(digits))){
                let index = string.index(string.startIndex, offsetBy: string.count - (string.count - sum))
              let nextChar: Character = string[index]
                numbers = numbers + "\(things)"
                print("found number - \(numbers)")
                 if (nextChar.isNumber == true){
                   print("next char is - \(nextChar)")
                 }else{
                   print("char is \(nextChar)")
                    if let value = Int(numbers){
                        print("adding - \(things)")
                        count += value
                        numbers = ""
                        string.removeFirst(sum)
                        sum = 0
                      }
                  }
              
            }
          }
    
      }
    return count
}




var first = countHi(string: "HiMrSeaverhihihi") // should = 4
var second = endOther(firstString: "Chuck Norris", secondString: "Norris") //should be true
var third = sumNumbers(string: "Mount81ns are so coo1 8m 1 r1gh7?") //should = 99

