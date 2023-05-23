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
                Text("What helps you feel comfortable?")
                    .font(.custom("Courier New", size:30))
                    .multilineTextAlignment(.center)
                    .border(.brown)
                    .font(.title)
                
                Text("3 ⭐️'s most comfortable ")
                    .font(.custom("Courier New", size:14))
                
                //VStack {
                Text("Being Alone")
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
                Text("Help from a friend")
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
            }
        }
    }
}

struct SurveryPage2_Previews: PreviewProvider {
    static var previews: some View {
        SurveryPage2()
    }
}
