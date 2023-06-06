//
//  ScenariosVM.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/25/23.
//

import Foundation

class JobViewModel: ObservableObject {
    let jobScenarios: [Scenario] = [
        Scenario(scenario: "You have been working at XYZ Corporation for three years and built a good relationship with your boss, John. However, you recently discovered some unethical practices within the marketing department that must be addressed", options: [Option(choices: ["Address the concerns directly","Seek guidance from a trusted peer", "Report the concerns"],pros: "Provides an opportunity for Sarah to express her concerns and propose solutions.", cons: "Risk of straining the relationship with her boss, you may have to handle potential conflict/confrontation")]),
        
        Scenario(scenario: "You have been working at XYZ Corporation for three years and built a good relationship with your boss, John. However, you recently discovered some unethical practices within the marketing department that must be addressed", options: [Option(choices: ["Address the concerns directly","Seek guidance from a trusted peer", "Report the concerns"],pros: "Provides an opportunity to gain insights and advice from a trusted source.", cons: "Relies on the availability and willingness of a trusted mentor or colleague.")]),
        
        Scenario(scenario: "You have been working at XYZ Corporation for three years and built a good relationship with your boss, John. However, you recently discovered some unethical practices within the marketing department that must be addressed", options: [Option(choices: ["Address the concerns directly","Seek guidance from a trusted peer", "Report the concerns"],pros: "Ensures that the concerns are documented and addressed by the appropriate channels.", cons: "The process may be time-consuming and require formal documentation. You may not have full control over the investigation or its outcome.")])
    ]
    let partyScenarios: [Scenario] = [
        Scenario(scenario: "You’re at a house party but you don’t know anybody except the host. You’re feeling a bit nervous and unsure of what to do ", options: [Option(choices: ["Hang out with the host","Strike up a conversation with someone", "Leave the party"], pros: "They introduce you to some of their friends, and you start to feel more comfortable around them.", cons: "However, you don't get to meet as many new people as you would have if you had ventured out on your own.")]),
        Scenario(scenario: "You’re at a house party but you don’t know anybody except the host. You’re feeling a bit nervous and unsure of what to do ", options: [Option(choices: ["Hang out with the host","Strike up a conversation with someone", "Leave the party"], pros: "They're friendly and welcoming, and you end up chatting with them for the rest of the night.", cons: "Not everybody is as welcoming and you get some strange looks.")]),
        Scenario(scenario: "You’re at a house party but you don’t know anybody except the host. You’re feeling a bit nervous and unsure of what to do.", options: [Option(choices: ["Hang out with the host","Strike up a conversation with someone", "Leave the party"], pros: "You're relieved to be out of the uncomfortable situation.", cons: "You decide to leave early. You feel disappointed that you didn't get to socialize and make new friends.")])
    ]
}


