//
//  ScenariosM.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/19/23.
//

import Foundation

//Where the scenarios and feedback will be pulled 

struct JobScenarios: Identifiable {
    var id = UUID()
    var scenario: String
    var option1: String
    var option2: String
    var option3: String
    var pros: String
   
    var cons: String
  
    
    var image: String
    
    
}
struct PartyScenarios: Identifiable {
    var id = UUID()
    var scenario: String
    var option1: String
    var option2: String
    var option3: String
    var pros: String
   
    
    var cons: String
    
    
    var image: String
    
    
}
