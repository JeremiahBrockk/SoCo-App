//
//  SurveryPage2.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/23/23.
//

import SwiftUI

struct SurveryPage2: View {
    var body: some View {
        ZStack {
            Color.init("ColorM")
                .ignoresSafeArea()
            //            background(Color("ColorM"))
            VStack(alignment: .center) {
                Text("Please rate your current comfort level in each of these different environments")
                    .foregroundColor(Color("ColorT"))
                    .bold()
                    .font(.custom("Courier New", size:18))
                    .multilineTextAlignment(.center)
                    .border(.brown)
                    .font(.title)
                Spacer()
                Text("Being Alone")
                    .font(.custom("Courier New", size:24))
                Spacer()
                HStack { Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    Image(systemName: "star")
                        .font(.title)
                        .foregroundColor(Color("ColorST"))
                    
                }
                Spacer()
                
                HStack {
                    Text("Continue")
                        .font(.custom("Courier New", size:18))
                        .fontWeight(.bold)
                }
                Spacer()
            }
        }
    }
}

struct SurveryPage2_Previews: PreviewProvider {
    static var previews: some View {
        SurveryPage2()
    }
}
