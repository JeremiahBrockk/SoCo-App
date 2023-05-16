//
//  PartyView.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

struct PartyView: View {
    var body: some View {
        VStack {
            Image("PartyI")
                .resizable()
                .frame(width: 334 , height: 342)
            Spacer()
            
           Text("You’re at a house party but you don’t know anybody except the host. You’re feeling a bit nervous and unsure of what to do ")
             //   .frame(width: 334, height: 170)
                .background(Color("ColorS"))
                .fontWeight(.medium)
                //.cornerRadius(15)
                .font(.title2)
            Spacer()
            NavigationLink(destination: Answer1()) {
                Text("Hang out with the host")
                    .background(Color("ColorM"))
                    .fontWeight(.medium)
                   // .frame(width: 330 , height: 35)
                    .cornerRadius(15)
                    
            }
            Text("Strike up a conversation with someone")
                .background(Color("ColorM"))
                .fontWeight(.medium)
         //   .frame(width: 330 , height: 35)
            .cornerRadius(15)
            .padding()
            Text("Leave the party")
                .background(Color("ColorM"))
                .fontWeight(.medium)
           // .frame(width: 330 , height: 35)
            .cornerRadius(15)
        }
    }
}

struct PartyView_Previews: PreviewProvider {
    static var previews: some View {
        PartyView()
    }
}
