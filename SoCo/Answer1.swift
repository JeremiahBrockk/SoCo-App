//
//  Answer1.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

struct Answer1: View {
    var body: some View {
        VStack {
            
            Text("You stick close to the host and chat with them throughout the party.")
                .font(.headline)
            
            Spacer()
            Text("Pros")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color("ColorT"))
            Text(" They introduce you to some of their friends, and you start to feel more comfortable around them.")
                .fontWeight(.medium)
                .background(Color("ColorS"))
            //.frame(width: 326 , height: 137)
                .cornerRadius(15)
            Text("Cons")
            //   .background(Co)
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color("ColorT"))
            Text("However, you don't get to meet as many new people as you would have if you had ventured out on your own")
                .fontWeight(.medium)
                .background(Color("ColorS"))
                .frame(width: 326 , height: 137)
                .cornerRadius(15)
            Spacer()
            HStack {
                
                Text("Try Again")
                    .background(Color("ColorM"))
                
                //    .frame(width: 150 , height: 63)
                //  .padding()
                    .foregroundColor(Color("ColorT"))
                    .cornerRadius(15)
                    .font(.largeTitle)
                Text("Continue")
                    .background(Color("ColorM"))
                // .frame(width: 150 , height: 63)
                    .foregroundColor(Color("ColorT"))
                    .cornerRadius(15)
                    .font(.largeTitle)
            }
            
        }
    }
}

struct Answer1_Previews: PreviewProvider {
    static var previews: some View {
        Answer1()
    }
}
