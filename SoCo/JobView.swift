//
//  JobView.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

struct JobView: View {
    var body: some View {
        VStack {
            Text("Job Scenario")
                .font(.custom("AppleGothic", size:30))
                .fontWeight(.medium)
                .foregroundColor(Color("ColorT"))
            Spacer()
            Image("Job1")
                .resizable()
                .scaledToFit()
                .padding()

            Text("You have been working at XYZ Corporation for three years and built a good relationship with your boss, John. However, you recently discovered some unethical practices within the marketing department that must be addressed")
                .font(.custom("AvenirNextCondensed", size:21))
                .foregroundColor(Color("ColorT"))
              //   .frame(width: 334, height: 170)
                .multilineTextAlignment(.center)
                .background(Color("ColorS"))
                 .fontWeight(.medium)
                 //.cornerRadius(15)
                 .font(.title2)
             Spacer()
             NavigationLink(destination: Answer1()) {
                 Text("Address the concerns directly")
                     .font(.custom("AvenirNextCondensed", size:24))
                     .background(Color("ColorM"))
                     .fontWeight(.medium)
                    // .frame(width: 330 , height: 35)
                     .cornerRadius(15)
                     
             }
             Text("Seek guidance from a trusted peer")
                .font(.custom("AvenirNextCondensed", size:24))
                 .background(Color("ColorM"))
                 .fontWeight(.medium)
          //   .frame(width: 330 , height: 35)
             .cornerRadius(15)
             .padding()
             Text("Report the concerns")
                .font(.custom("AvenirNextCondensed", size:24))
                 .background(Color("ColorM"))
                 .fontWeight(.medium)
            // .frame(width: 330 , height: 35)
             .cornerRadius(15)
        }
    }
}

struct JobView_Previews: PreviewProvider {
    static var previews: some View {
        JobView()
    }
}
