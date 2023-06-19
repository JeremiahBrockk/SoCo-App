//
//  ScenariosM.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/19/23.
//

import Foundation

//Where the scenarios and feedback will be pulled 

struct JobScenarios: Identifiable {
    let id = UUID()
    let scenarioJ: String
    // TODO: make a struct for options
    var options: [Option]
    
}
struct Option: Identifiable {
    let id = UUID()
    var choice: String
    var pros: String
    var cons: String
}

struct Scenario: Identifiable {
    let id = UUID()
    let image: String
    let description: String
    var options: [Option]
}

struct PartyScenarios: Identifiable {
    var id = UUID()
    var scenarioP: String
    var options: [Option]
    
}
