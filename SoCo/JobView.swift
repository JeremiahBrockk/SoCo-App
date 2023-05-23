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
                .foregroundColor(Color("ColorT"))
            Spacer()
            
            Text("You have been working at XYZ Corporation for three years and built a good relationship with your boss, John. However, you recently discovered some unethical practices within the marketing department that must be addressed")
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
                     .background(Color("ColorM"))
                     .fontWeight(.medium)
                    // .frame(width: 330 , height: 35)
                     .cornerRadius(15)
                     
             }
             Text("Seek guidance from a trusted peer")
                 .background(Color("ColorM"))
                 .fontWeight(.medium)
          //   .frame(width: 330 , height: 35)
             .cornerRadius(15)
             .padding()
             Text("Report the concerns")
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
