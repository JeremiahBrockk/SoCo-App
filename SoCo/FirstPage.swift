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
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            Spacer()
            Text("in order to create a more personal experience, please complete this short survey")
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
//
            Button("Button Label") {

            }
            .buttonStyle(.bordered)
            .tint(.gray)


            Button("Button Label") {

            }
            .buttonStyle(.borderedProminent)

            .tint(.pink)
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
