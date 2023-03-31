

import Foundation

func getBotReponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("Hello") {
        return "Hey there!"
    } else if tempMessage.contains("Good Bye") {
        return "Talk to you later!"
    } else if  tempMessage.contains("How are you") {
        return "I'm fine, how about you?"
    } else {
        return "That's cool"
    }
}
    
