//
//  JobView.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

struct ScenarioView: View {
    
    @Environment(\.dismiss) var dismiss
    // Scenario takes in a binding of your navigation path
//    @Binding var path: [ScenarioType]
   // @Binding var path: NavigationPath
    @StateObject var jobVM = JobViewModel()
    let scenarioType: ScenarioType
    let scenarioIndex: Int
    var scenario: Scenario {
        switch scenarioType {
        case .job:
            return jobVM.jobScenarios[scenarioIndex]
        case .party:
            return jobVM.partyScenarios[scenarioIndex]
        }
    }
    var scenarioDescription: String {
        switch scenarioType {
        case .job:
            return "Job Scenario"
        case .party:
            return "Party Scenario"
            
        }
    }
    @Environment(\.legibilityWeight) var legibilityWeight
    var mainFont: String {
        guard let legibilityWeight = legibilityWeight else {
            return "AppleGothic"
        }
        switch legibilityWeight {
        case .regular:
            return "AppleGothic"
        case .bold:
            return "AppleSDGothicNeo"
        @unknown default:
            return "AppleGothic"
        }
    }
    var body: some View {
       // NavigationStack {
            VStack {
                Text(scenarioDescription)
                    .font(.custom(mainFont, size:30, relativeTo: .title))
                    .fontWeight(.medium)
                    .foregroundColor(Color("ColorT"))
                Spacer()
                Image(scenario.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text(scenario.description)
                    .font(.custom("AvenirNextCondensed", size:21, relativeTo: .title))
                    .foregroundColor(Color("ColorT"))
                    .multilineTextAlignment(.center)
                    .background(Color("ColorS"))
                    .fontWeight(.medium)
                    .font(.title2)
                Spacer()
                ForEach(scenario.options) { option in
                    VStack {
                        NavigationLink(destination: Answer(dismiss: _dismiss,  scenarioType: scenarioType, scenarioIndex: scenarioIndex, answer: option.choice, pro: option.pros, con: option.cons)) {
                            Text(option.choice)
                                .font(.custom("AvenirNextCondensed", size:24, relativeTo: .title))
                                .foregroundColor(Color("ColorTT"))
                                .background(Color("ColorM"))
                                .fontWeight(.medium)
                                .cornerRadius(15)
                        }
                        
                    }
                    .navigationBarBackButtonHidden(true)

                }
            }
    }
}

struct JobView_Previews: PreviewProvider {
    static var previews: some View {
        ScenarioView(scenarioType: .job, scenarioIndex: 0)
        ScenarioView(scenarioType: .job, scenarioIndex: 1)
        ScenarioView(scenarioType: .party, scenarioIndex: 0)
        ScenarioView(scenarioType: .party, scenarioIndex: 1)
    }
}
//extension NavigationPath {
//    mutating func removeAll() {
//        while !self.isEmpty {
//            self.removeLast()
//        }
//    }
//}

