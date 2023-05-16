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
            
            Rectangle()
                .frame(width: 334, height: 170)
                .cornerRadius(15)
            
            NavigationLink(destination: Answer1()) {
                Rectangle()
                    .frame(width: 330 , height: 35)
                    .cornerRadius(15)
            }
            Rectangle()
            .frame(width: 330 , height: 35)
            .cornerRadius(15)
            Rectangle()
            .frame(width: 330 , height: 35)
            .cornerRadius(15)
        }
    }
}

struct PartyView_Previews: PreviewProvider {
    static var previews: some View {
        PartyView()
    }
}
