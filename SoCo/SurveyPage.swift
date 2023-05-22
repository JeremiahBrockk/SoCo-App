//
//  SurveyPage.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/22/23.
//

import SwiftUI

struct SurveyPage: View {
    
    var body: some View {
        ZStack {
//            background(Color("ColorM"))
            VStack(alignment: .center) {
                Text("Which setting do you feel least comfortable in?")
                    .border(.brown)
                    .font(.title)
                
                Text("3 ⭐️'s most comfortable ")
                
                    //VStack {
                        Text("Workplace")
                    .font(.title)
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
            Text("School")
                    .font(.title)
                HStack { Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))

                }
            Text("Social Gathering")
                    .font(.title)
                HStack {   Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                                   Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                
                    }
                HStack {
                    Text("Continue")
                }
                
            }
        }
//        .background(fil)
    }
}

struct SurveyPage_Previews: PreviewProvider {
    static var previews: some View {
        SurveyPage()
    }
}
