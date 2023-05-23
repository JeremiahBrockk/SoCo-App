//
//  ContentView.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

struct ContentView: View {

    @State private var showingModal = false
    
    var body: some View {
        NavigationStack{
            GeometryReader { geo in
                ZStack {
                    VStack(alignment: .center) {
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.4)
                        
                        
                        Text("Daily Mission")
                            .fontWeight(.medium)
                         //   .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                            .foregroundColor(Color("ColorT"))
                            .bold()
                            .font(.largeTitle)
                        Rectangle()
                            .foregroundColor(Color.init("ColorM"))
                            .frame(width: 333, height: 176)
                            .border(.brown)

                            .cornerRadius(15)
                        VStack {
                            HStack {
                                Text("Say Good Morning to Someone")
                                    .fontWeight(.medium)
                                //   .foregroundColor(Color("ColorM"))
                                    .foregroundColor(Color("ColorT"))
                                
                            }
                            //                        Divider()
                            //                        HStack {
                            //                            Text("Speak in Front of a Group")
                            //                                .fontWeight(.medium)
                            //                                .foregroundColor(Color("ColorT"))
                            //
                            //                        }
                            //                        Divider()
                            //                        HStack {
                            //                            Text("Post a Picture Online")
                            //                                .fontWeight(.medium)
                            //                            // .frame(width: geo.size.width * 0.7, height: geo.size.height / 6)
                            //                                .foregroundColor(Color("ColorT"))
                            //                                .cornerRadius(15)
                            //
                            //
                            //                        }
                        }
                        Text("Scenarios")
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(Color("ColorT"))
                        //     .bold()
                        
                        Spacer()
                        
                        // VStack(alignment: .leading) {
                        HStack {
                            Text("Job")
                                .fontWeight(.medium)
                                .foregroundColor(Color("ColorT"))
                                .padding()
                            // .alignmentGuide(.leading) { d in d[.trailing]}
                                .font(.title)
                            Spacer()
                            
                        }
                        
                        //}
                        NavigationLink(destination: JobView()) {
                            Image("JobS")
                                .resizable()
                                .foregroundColor(Color("ColorT"))
                                .frame(width: geo.size.width * 0.9, height: geo.size.height / 6)
                                .cornerRadius(15)
                            
                        }
                        HStack {
                            Text("Party")
                                .font(.title)
                                .fontWeight(.medium)
                                .padding()
                            Spacer()
                        }
                        NavigationLink(destination: PartyView()) {
                            Image("PartyS")
                                .resizable()
                                .frame(width: geo.size.width * 0.9, height: geo.size.height / 6)
                                .cornerRadius(15)
                        }
                            
                    
                }.frame(maxWidth: .infinity)
                
            }
                Button("Show") {
                    withAnimation {
                        showingModal = true
                    }
                }
            }
            .blur(radius: showingModal ? 2.0 : 0)
            
            if showingModal {
                Color.black.opacity(0.2)
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.init("ColorM"))
                        .frame(width: 333, height: 508)
                    VStack {
                        Text("Missions")
                            .foregroundColor(.brown)
                            .font(.title)
                        Divider()
                        HStack {
                            Text("Say goodmorning to someone")
                            Image(systemName: "square")
                        }
                        Divider()
                        HStack{
                            Text("Say goodmorning to someone")
                            Image(systemName: "square")
                        }
                        Divider()
                        HStack {
                            Text("Say goodmorning to someone")
                            Image(systemName: "square")
                        }
                        Divider()
                        HStack {
                            Text("Say goodmorning to someone")
                            Image(systemName: "square")
                        }
                    Image(systemName: "arrow.down.right.and.arrow.up.left")
                    .onTapGesture {
                        withAnimation {
                            showingModal = false
                        }
                        }
                        }
                    }
                
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
