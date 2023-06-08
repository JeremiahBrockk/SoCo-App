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
            Color.init("ColorM")
                .ignoresSafeArea()
            VStack {
               
                    
                    Text("(Disclaimer) not intended as substitute for medical advice... etc")
                        .multilineTextAlignment(.center)
                        .border(.black)
                    
                        .font(.custom("Courier New", size:24))
                
                    Text("privacy policy")
                        .font(.custom("Courier New", size:14))
                
                    Text("I understand and wish to continue")
                    
                        .font(.custom("Courier New", size:14))
                
                Button("Continue") {
                    
                }
                .tint(.black)
            }
        }
        
    }
        
}

struct SurveyDisclaimer_Previews: PreviewProvider {
    static var previews: some View {
        SurveyDisclaimer()
    }
}
