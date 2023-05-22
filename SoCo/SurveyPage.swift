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
                    .font(.custom("Courier New", size:30))
                    .border(.brown)
                    .font(.title)
                
                Text("3 ⭐️'s most comfortable ")
                    .font(.custom("Courier New", size:14))
                
                    //VStack {
                        Text("Workplace")
                    .font(.custom("Courier New", size:24))
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
                    .font(.custom("Courier New", size:24))
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
                    .font(.custom("Courier New", size:24))
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
                        .font(.custom("Courier New", size:18))
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
