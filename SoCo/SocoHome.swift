//
//  ContentView.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

struct CheckBox: View {
    @State var isChecked = false
    var imageName: String {
        isChecked ? "checkmark.square" : "square"
    }
    
    var body: some View {
        Button {
            isChecked.toggle()
        } label: {
            Image(systemName: imageName)
        }
    }
    
}

struct SocoHome: View {
//    @State private var path = [ScenarioType]()
    @State private var isChecked = false
    @State private var showingModal = false
    // Create your navigation path
   // @State private var path = NavigationPath()
    @Environment(\.legibilityWeight) var legibilityWeight
    var mainFont: String {
        guard let legibilityWeight = legibilityWeight else {
            return "AppleGothic"
        }
        switch legibilityWeight {
        case .regular:
            return "AppleGothic"
        case .bold:
            return "AppleSDGothicNeo"
        @unknown default:
            return "AppleGothic"
        }
    }
    var body: some View {
        // Plug in your navigation path to the navigation stack
        NavigationStack {
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
                                .foregroundColor(Color("ColorT"))
                                .bold()
                                .font(.custom(mainFont, size:30, relativeTo: .title))
                            
                            VStack {
                                HStack {
                                    VStack {
                                        Text("Say Good Morning to Someone")
                                            .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                            .foregroundColor(Color("ColorTT"))
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.leading)
                                        
                                        Divider()
                                        Text("Speak in Front of a Group")
                                            .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                            .foregroundColor(Color("ColorTT"))
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.leading)
                                        Divider()
                                        Text("Post a Picture Online")
                                            .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("ColorTT"))
                                            .multilineTextAlignment(.leading)
                                        
                                        HStack {
                                            Spacer()
                                            Image(systemName: "arrow.up.left.and.arrow.down.right")
                                                .foregroundColor(Color("ColorTT"))
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
                                            .border(.brown)
                                            .cornerRadius(15)
                                    )
                                }
                                
                            }
                            Text("Scenarios")
                                .font(.custom(mainFont, size:30, relativeTo: .title))
                                .fontWeight(.medium)
                                .foregroundColor(Color("ColorT"))
                            
                            Spacer()
                            HStack {
                                Text("Job")
                                    .font(.custom(mainFont, size:30, relativeTo: .title))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("ColorT"))
                                    .padding()
                                Spacer()
                                
                            }
//                            NavigationLink(value: ScenarioType.job) {
//                                Image("JobS")
//                                    .resizable()
//                                    .foregroundColor(Color("ColorT"))
//                                    .frame(width: geo.size.width * 0.9, height: geo.size.height / 6)
//                                    .cornerRadius(15)
//                            }
                            NavigationLink(destination: ScenarioView(scenarioType: .job, scenarioIndex: 0)) {
                                Image("JobS")
                                    .resizable()
                                    .foregroundColor(Color("ColorT"))
                                    .frame(width: geo.size.width * 0.9, height: geo.size.height / 6)
                                    .cornerRadius(15)

                            }
                            HStack {
                                Text("Party")
                                    .font(.custom(mainFont, size:30, relativeTo: .title))
                                    .foregroundColor(Color("ColorT"))
                                    .fontWeight(.medium)
                                    .padding()
                                Spacer()
                            }
                            NavigationLink(destination: ScenarioView(scenarioType: .party, scenarioIndex: 0)) {
                                Image("PartyS")
                                    .resizable()
                                    .frame(width: geo.size.width * 0.9, height: geo.size.height / 6)
                                    .cornerRadius(15)
                            }
                            .navigationBarBackButtonHidden(true)
                            
                        }.frame(maxWidth: .infinity)
                        
                    }
                    
                }
                .blur(radius: showingModal ? 2.0 : 0)
                
                if showingModal {
                    Color.black.opacity(0.2)
                        .overlay {
                            Rectangle()
                                .foregroundColor(Color.init("ColorM"))
                                .frame(width: geo.size.width * 0.7, height: geo.size.height * 3.0 / 6,alignment: .center)
                                .cornerRadius(15)
                                .overlay {
                                    VStack(alignment: .leading) {
                                        HStack {
                                            Image(systemName: "arrow.down.right.and.arrow.up.left")
                                                .foregroundColor(Color("ColorTT"))
                                                .onTapGesture {
                                                    withAnimation {
                                                        showingModal = false
                                                        
                                                    }
                                                    
                                                }
                                            
                                        }
                                        VStack(alignment: .center) {
                                            Text("Missions")
                                                .font(.custom("AvenirNextCondensed", size:24, relativeTo: .largeTitle))
                                                .foregroundColor(Color("ColorTT"))
                                            Divider()
                                        }
                                        Group {
                                            HStack {
                                                Text("Say goodmorning to someone")
                                                    .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                                    .foregroundColor(Color("ColorTT"))
                                                Spacer()
                                                CheckBox()
                                            }
                                            Divider()
                                            HStack{
                                                Text("Speak in front of a group")
                                                    .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                                    .foregroundColor(Color("ColorTT"))
                                                Spacer()
                                                CheckBox()
                                                
                                            }
                                            Divider()
                                            HStack {
                                                Text("Post a picture online")
                                                    .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                                    .foregroundColor(Color("ColorTT"))
                                                Spacer()
                                                CheckBox()
                                                
                                            }
                                            Divider()
                                            HStack {
                                                Text("Talk to someone new")
                                                    .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                                    .foregroundColor(Color("ColorTT"))
                                                Spacer()
                                                CheckBox()
                                                
                                            }
                                        }
                                        Group {
                                            Divider()
                                            HStack {
                                                Text("Share an opinion or idea")
                                                    .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                                    .foregroundColor(Color("ColorTT"))
                                                Spacer()
                                                CheckBox()
                                                
                                            }
                                        }
                                        Divider()
                                        HStack {
                                            Text("Engage in positive self-talk")
                                                .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                                .foregroundColor(Color("ColorTT"))
                                            Spacer()
                                            CheckBox()
                                            
                                        }
                                        Divider()
                                        HStack {
                                            Text("Attend a social event")
                                                .font(.custom("AvenirNextCondensed", size:20, relativeTo: .title))
                                                .foregroundColor(Color("ColorTT"))
                                            Spacer()
                                            CheckBox()
                                            
                                        }
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
        SocoHome()
        SocoHome()
            .previewDevice("iPad (10th generation)")
    }
}
//extension NavigationPath {
//    mutating func removeAll() {
//        while !self.isEmpty {
//            self.removeLast()
//        }
//    }
//}
