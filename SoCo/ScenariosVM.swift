//
//  ScenariosVM.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/25/23.
//

import Foundation

class JobViewModel: ObservableObject {
    @Published var scenarios: [JobScenarios] = [
        JobScenarios (scenario: "You have been working at XYZbCorporation for three years and built a good relationship with your boss, John. However, you recently discovered some unethical practices within the marketing department that must be be addressed", option1: "Address the concerns directly", option2: "Seek guidance from a trusted peer", option3: "Report the concerns", pros: "Provides an opportunity for Sarah to express her concerns and propose solutions.", cons: "Risk of straining the relationship with her boss, you may have to handle potential conflict/ confrontation.", image: "Job 1"),
       
        JobScenarios (scenario: "You're at a house party but you don't know anybody except the host. You're feeling a bit nervous and unsure of what to do", option1: "Hang out with the host", option2: "Strike up a conversation with someone", option3: "Leave the party", pros: "They're friendly and welcoming and you end up chatting with them for the rest of the night.", cons: "Not everybody is as welcoming and you get some strange looks", image: "Job1"),
        JobScenarios (scenario: "You're at a house party but you don't know anybody except the host. You're feeling a bit nervous and unsure of what to do", option1: "Hang out with the host", option2: "Strike up a conversation with someone", option3: "Leave the party", pros: "Provides an opportunity to gain insights and advice from a trusted source.", cons: "Relies on the availability and willingess of a trusted mentor or colleague.", image: "Job1")
    ]
}

class PartyViewModel: ObservableObject {
    @Published var scenarios: [PartyScenarios] = [
    PartyScenarios  (scenario: "You're at a house party but you don't know anybody except the host. You're feeling a bit nervous and unsure of what to do", option1: "Hang out with the host", option2: "Strike up a conversation with someone", option3: "Leave the party", pros: "They introduce you to some of their friends and you start to feel more comfortable around them.", cons: "However, you don't get to meet as many new people as you would have if you had ventured out on your own", image: "Job1"),
    PartyScenarios  (scenario: "You're at a house party but you don't know anybody except the host. You're feeling a bit nervous and unsure of what to do", option1: "Hang out with the host", option2: "Strike up a conversation with someone", option3: "Leave the party", pros: "They introduce you to some of their friends and you start to feel more comfortable around them.", cons: "However, you don't get to meet as many new people as you would have if you had ventured out on your own", image: "Job1"),
    ]
}
