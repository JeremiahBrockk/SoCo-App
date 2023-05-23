//
//  FirstPage.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/22/23.
//

import SwiftUI

struct FirstPage: View {
    var body: some View {
        VStack {
            Text("Before We Continue...")
                .font(.custom("Courier New", size:17))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            Spacer()
            Text("in order to create a more personal experience, please complete this short survey")
                .font(.custom("Courier New", size:13))
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
//
            Button("OKAY!") {

            }
         //   .buttonStyle(.bordered)
            .tint(.black)
            .border(.black)
            .font(.title)


            Button("Skip") {

            }
          //  .buttonStyle(.borderedProminent)

            .tint(.black)
           // Button("Skip") {
            
            //}
            
        }
    }
}

struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
