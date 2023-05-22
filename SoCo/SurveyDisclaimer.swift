//
//  SurveyDisclaimer.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/22/23.
//

import SwiftUI

struct SurveyDisclaimer: View {
    var body: some View {
        ZStack {
            VStack {
                Text("(Disclaimer) not intended as substitute for medical advice... etc")
                    .border(.black)
                
                    .font(.title)
                Text("privacy policy")
                
                Text("I understand and wish to continue")
                Button("Continue") {
                    
                }
            }
        }
        
    }
        
}

struct SurveyDisclaimer_Previews: PreviewProvider {
    static var previews: some View {
        SurveyDisclaimer()
    }
}
