//
//  ScenariosVM.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/25/23.
//

import Foundation

class JobViewModel: ObservableObject {
    //TODO: fix the bug that crashes the app when you complete the final scenario and hit "continue"
    let jobScenarios: [Scenario] = [
        Scenario(image: "Job1", description: "You have been working at XYZ Corporation for three years and built a good relationship with your boss, John. However, you recently discovered some unethical practices within the marketing department that must be addressed", options: [Option(choice: "Address the concerns directly",pros: "Provides an opportunity for Sarah to express her concerns and propose solutions.", cons: "Risk of straining the relationship with her boss, you may have to handle potential conflict/confrontation"), Option(choice: "Seek guidance from a trusted peer",pros: "Provides an opportunity to gain insights and advice from a trusted source.", cons: "Relies on the availability and willingness of a trusted mentor or colleague."), Option(choice: "Report the concerns",pros: "Ensures that the concerns are documented and addressed by the appropriate channels.", cons: "The process may be time-consuming and require formal documentation. You may not have full control over the investigation or its outcome.")]),
        
        Scenario(image: "Job2", description: "Your coworkers start arguing while you’re working what do you do?", options: [Option(choice: "Instigate the situation",pros: "None.", cons: "Your coworkers begin to fight"), Option(choice: "Continue with your work",pros: "Your boss comes to deescelate the situation.", cons: "Relies on the availability and willingness of your boss."), Option(choice: "Break the argument up",pros: "The issue is resolved and you all go back to work.", cons: "There’s a chance they could continue anyway regardless of your intervention.")]),
        
    ]
    let partyScenarios: [Scenario] = [
        Scenario(image: "Party1", description: "You’re at a house party but you don’t know anybody except the host. You’re feeling a bit nervous and unsure of what to do ", options: [Option(choice: "Hang out with the host", pros: "They introduce you to some of their friends, and you start to feel more comfortable around them.", cons: "However, you don't get to meet as many new people as you would have if you had ventured out on your own."),Option(choice: "Strike up a conversation with someone", pros: "They're friendly and welcoming, and you end up chatting with them for the rest of the night.", cons: "Not everybody is as welcoming and you get some strange looks."), Option(choice: "Leave the party", pros: "You're relieved to be out of the uncomfortable situation.", cons: "You decide to leave early. You feel disappointed that you didn't get to socialize and make new friends.")]),
        
        Scenario(image: "Party2", description: "People show up at the party and start messing with your friend", options: [Option(choice: "Tell them to stop", pros: "None.", cons: "They ask what are you gonna do if they don't?"),Option(choice: "Watch", pros: "They don't bother you.", cons: "They jump your friend."), Option(choice: "Tell your friend it's time to go", pros: "You & your friend make it out safely.", cons: "People make fun of the both of you.")]),
   
    ]
}


