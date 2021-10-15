import Foundation
public class MadLib{
    
    var story: String = ""
    
    
    init (one: String, two: String, three: String, four: String, five: String, six: String, seven: String, eight: String, nine: String, ten: String, eleven: String, twelve: String){
        
        story = "It all started on a \(one). My family and I went to Hawaii for a family vacation. On our first day, we went to a \(two) restaurant when it was suddenly \(three) by pirates! My \(four) was having none of it, however, and used their skills in \(five) to defeat the pirates. But the battle wasn’t over. Bursting through the front door, \(six) in a pirate hat showed up riding a/an \(seven). He demanded \(eight) or else the \(nine) would be no more. Even with all of his might, he was still no match for my \(ten). After the encounter, we decided to go \(eleven) with some talking \(twelve). I can’t remember the rest, but it sure was wacky!"
    }
    
    init (one: String, two: String, three: String, four: String, five: String, six: String, seven: String, eight: String, nine: String, ten: String, eleven: String){
        
        story = "Putting on a newscast might look easy, but it takes a lot of \(one) work. Go behind the scenes, and you’ll see dozens of workers \(two) in every direction! Reporters run back and forth between the studio and locations all around (the) \(three) to cover \(four) stories and interview \(five). They are joined by videographers who operate handheld \(six) to capture all the action. The anchors are the people who \(seven) behind news desks. Everyone has to look \(eight) on air. The director tells everyone to \(nine), and they are easy to spot because they always wear \(ten). They always yell “Lights, Cameras, \(eleven).” Suffice to say, I didn’t stay at that job for long!"
    }
    
    init (one: String, two: String, three: String, four: String, five: String, six: String, seven: String, eight: String, nine: String, ten: String){
        
        story = "I purchased a copy of \(one). I got home, opened it up, and it had no CD in the box. Went back to \(two) and told an employee named \(three). They claimed I took the CD out and wanted a second. I went crazy, \(four) all around until they regretted that statement. They got another box, opened it up and there was no CD in that one either. They proceeded to open 5-6 other boxes, all having no CD's. So I told them I wanted a refund. They refused to give me a refund because \(five). Even though they saw with their own \(six) that every single copy they had was missing the CD. I cancelled the transaction with the \(seven) company, and I wrote a letter to \(eight) explaining what happened. They never did tell me if the problem was on their end, but they did send me a \(nine). It’s like I always say: \(ten)!"
    }
    
    func returnStory() -> String{
        return story
    }
        
        
            
    
}
