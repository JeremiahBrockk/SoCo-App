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
            Rectangle()
                .frame(width: 326 , height: 137)
                .cornerRadius(15)
        Text("Cons")
             //   .background(Co)
                .font(.title)
            Rectangle()
                .frame(width: 326 , height: 137)
                .cornerRadius(15)
            Spacer()
            HStack {
                Text("Try Again")
                    .background(Color.red)
                    .frame(width: 150 , height: 63)
                    .padding()
                   // .cornerRadius(15)
                Rectangle()
                    .frame(width: 150 , height: 63)
                    .cornerRadius(15)
            }
            
        }
    }
}

struct Answer1_Previews: PreviewProvider {
    static var previews: some View {
        Answer1()
    }
}
