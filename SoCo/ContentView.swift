//
//  ContentView.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            GeometryReader { geo in
                VStack(alignment: .center) {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 0.4)
                    Text("Daily Mission")
                        .bold()
                        .font(.largeTitle)
                    Rectangle()
                        .frame(width: geo.size.width * 0.7, height: geo.size.height / 6)
                        .cornerRadius(15)
                    Spacer()
                    
                    Text("Scenarios")
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
                    HStack(alignment: .firstTextBaseline) {
                        Text("Job")
                            .font(.headline)
                            
                    }
                    NavigationLink(destination: JobView()) {
                        Rectangle()
                            .frame(width: geo.size.width * 0.9, height: geo.size.height / 6)
                            .cornerRadius(15)
                        
                    }
                    Text("Party")
                        .font(.headline)
                    NavigationLink(destination: PartyView()) {
                        Rectangle()
                            .frame(width: geo.size.width * 0.9, height: geo.size.height / 6)
                            .cornerRadius(15)
                    }
                }.frame(maxWidth: .infinity)
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewDevice("iPad (10th generation)")
    }
}
