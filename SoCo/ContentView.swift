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
                    Spacer()
                    VStack(alignment: .center) {
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width * 0.4)
                        
                        
                        ScrollView {
                            
                            Text("Daily Mission")
                            
                            //   .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                                .foregroundColor(Color("ColorT"))
                                .bold()
                                .font(.custom("AppleGothic", size:30))
                                .padding()
                            //                            Rectangle()
                            //                                .foregroundColor(Color.init("ColorM"))
                            //                                .frame(width: 333, height: 176)
                            //                                .border(.brown)
                            //                                .cornerRadius(15)
                            VStack {
                                HStack {
                                    VStack {
                                        Text("Say Good Morning to Someone")
                                        
                                            .font(.custom("AvenirNextCondensed", size:20))
                                            .foregroundColor(Color("ColorT"))
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.leading)
                                        
                                       Divider()
                                        Text("Speak in Front of a Group")
                                            .font(.custom("AvenirNextCondensed", size:20))
                                            .foregroundColor(Color("ColorT"))
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.leading)
                                        Divider()
                                        Text("Post a Picture Online")
                                            .font(.custom("AvenirNextCondensed", size:20))
                                            .foregroundColor(Color("ColorT"))
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.leading)
                                        
                                      //  .foregroundColor(Color("ColorT"))
                                        
                                        HStack {
                                            Spacer()
                                            Image(systemName: "arrow.up.left.and.arrow.down.right")
                                                .foregroundColor(Color("ColorT"))
                                                .onTapGesture {
                                                    
                                                    
                                                    withAnimation {
                                                        showingModal = true
                                                        
                                                    }
                                            }
                                        }
                                    }
                                    .background(
                                        Rectangle()
                                            .foregroundColor(Color.init("ColorM"))
                                            .frame(width: 333, height: 120)
                                            .border(.brown)
                                            .cornerRadius(15)
                                    )
                                
                                    
                                }
                                .frame(width: 333, height: 120)
                                
                                
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
                                .font(.custom("AppleGothic", size:30))
                                .fontWeight(.medium)
                                .foregroundColor(Color("ColorT"))
                            //     .bold()
                            
                            Spacer()
                            
                            // VStack(alignment: .leading) {
                            HStack {
                                Text("Job")
                                    .font(.custom("AppleGothic", size:30))
                                
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
                                    .font(.custom("AppleGothic", size:30))
                                
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
                            Text("Speak in front of a group")
                            Image(systemName: "square")
                        }
                        Divider()
                        HStack {
                            Text("Post a picture online")
                            Image(systemName: "square")
                        }
                        Divider()
                        HStack {
                            Text("Talk to someone new")
                            Image(systemName: "square")
                        }
//                        HStack {
//                            Text("Talk to someone new")
//                            Image(systemName: "square")
//                        }
//Divider()
//                        HStack{
//                            Text("Talk to someone new")
//                            Image(systemName: "square")
//                        }
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
}
