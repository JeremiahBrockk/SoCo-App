//
//  SurveyPage3.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/23/23.
//

import SwiftUI

struct SurveyPage3: View {
    var body: some View {
        ZStack {
            Color.init("ColorM")
                .ignoresSafeArea()
            //            background(Color("ColorM"))
            VStack(alignment: .center) {
                Text("How uncomfortable are you in social situations?")
                    .font(.custom("Courier New", size:30))
                    .multilineTextAlignment(.center)
                    .border(.brown)
                    .font(.title)
                
                Text("3 ⭐️'s most comfortable ")
                    .font(.custom("Courier New", size:14))
                
                //VStack {
               
                HStack {Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    //    }
                }
             
            }
        }
    }
}

struct SurveyPage3_Previews: PreviewProvider {
    static var previews: some View {
        SurveyPage3()
    }
}
