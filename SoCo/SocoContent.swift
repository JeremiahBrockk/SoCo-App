//
//  SocoContent.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 6/15/23.
//

import SwiftUI

struct SoCoContent: View {
   
    
    @AppStorage("userHasCompletedSurvey") var userHasCompletedSurvey = false
    
    var body: some View {
        //TODO: if user has never opened app, go to first page (use @AppStorage)
        Group {
            if userHasCompletedSurvey {
                SocoHome()
                 .transition(.slide)
            } else {
                SurveyPage(userHasCompletedSurvey: $userHasCompletedSurvey)
                 .transition(.slide)
                 .onDisappear {
                     userHasCompletedSurvey = true
                 }
            }
        }
        .animation(.default, value: userHasCompletedSurvey)
    }
}
