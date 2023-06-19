//
//  Answer1.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

struct Answer: View {
//    @Binding var path: [ScenarioType]
   // let parentDismiss: DismissAction
//    @Binding var path: NavigationPath
    @Environment(\.dismiss) var dismiss
//    @State private var path = NavigationPath()
    let scenarioType: ScenarioType
    let scenarioIndex: Int
    
    var nextScenarioIndex: Int {
        scenarioIndex + 1
    }
    let answer: String
    let pro: String
    let con: String
    
    @State private var index: [Int] = [0, 0, 0, 0]
    
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
//    @Binding var path: NavigationPath
    var body: some View {
        NavigationStack {
            VStack {
                Text(answer)
                    .font(.custom(mainFont, size:28, relativeTo: .title))
                    .multilineTextAlignment(.center)
                Spacer()
                Text("Pros")
                    .font(.custom(mainFont, size:28, relativeTo: .title))
                    .fontWeight(.medium)
                    .foregroundColor(Color("ColorT"))
                Text(pro)
                    .font(.custom("AvenirNextCondensed", size:24, relativeTo: .title))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .background(Color("ColorS"))
                    .cornerRadius(15)
                Spacer()
                Text("Cons")
                    .font(.custom(mainFont, size:28, relativeTo: .title))
                    .fontWeight(.medium)
                    .foregroundColor(Color("ColorT"))
                    .multilineTextAlignment(.center)
                Text(con)
                    .font(.custom("AvenirNextCondensed", size:24, relativeTo: .title))
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .background(Color("ColorS"))
                    .cornerRadius(15)
                Spacer()
                HStack {
                    NavigationLink(destination: ScenarioView(scenarioType: scenarioType, scenarioIndex: scenarioIndex)) {
                        Text("Try Again")
                            .font(.custom("AvenirNextCondensed", size:36, relativeTo: .title))
                            .fontWeight(.bold)
                            .background(Color("ColorM"))
                            .foregroundColor(Color("ColorTT"))
                            .cornerRadius(15)
                            .font(.largeTitle)
                    }
                
                    Group {
                        if nextScenarioIndex == 2 {
                            NavigationLink(destination: SocoHome()) {
                                Text("Continue")
                                    .font(.custom("AvenirNextCondensed", size:36, relativeTo: .title))
                                    .fontWeight(.bold)
                                    .background(Color("ColorM"))
                                    .foregroundColor(Color("ColorTT"))
                                    .cornerRadius(15)
                                    .font(.largeTitle)
                            
                         }
                        } else {
                            NavigationLink( destination: ScenarioView(scenarioType: scenarioType, scenarioIndex: nextScenarioIndex)) {
                                Text("Continue")
                                    .font(.custom("AvenirNextCondensed", size:36, relativeTo: .title))
                                    .fontWeight(.bold)
                                    .background(Color("ColorM"))
                                    .foregroundColor(Color("ColorTT"))
                                    .cornerRadius(15)
                                    .font(.largeTitle)
                            }
                            }
                        }
                    }
                }
                .navigationBarBackButtonHidden(true)
            }
            
        }
    }

struct Answer1_Previews: PreviewProvider {
    static var previews: some View {
        Answer(scenarioType: .job, scenarioIndex: 0, answer: "your answer here", pro: "pro description", con: "con description")
        Answer(scenarioType: .job, scenarioIndex: 1, answer: "your answer here", pro: "pro description", con: "con description")
        Answer(scenarioType: .party, scenarioIndex: 0, answer: "your answer here", pro: "pro description", con: "con description")
        Answer(scenarioType: .party, scenarioIndex: 1, answer: "your answer here", pro: "pro description", con: "con description")
    }
}

//extension NavigationPath {
//    mutating func removeAll() {
//        while !self.isEmpty {
//            self.removeLast()
//        }
//    }
//}
