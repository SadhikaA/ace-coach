import SwiftUI

struct Journey {
    
    let pages: [JourneyPage]
}

struct JourneyPage {
    let text: String 
    // add an image of the racquet 
    let choices = [Choice]
}

struct Choice {
    let text: String 
    let destination: int 
}
