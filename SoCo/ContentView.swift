//
//  ContentView.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/15/23.
//

import SwiftUI

//struct CheckBox: View {
//    @State var isChecked = false
//    let images = ["checkmark.square", "square"]
//    @State var selectedImage = ""
//
//    var body: some View {
//        ForEach(images, id: \.self) { image in
//            CheckedBoxView(selectedImage: $selectedImage, imageName: image)
//        }
//    }
//}
//struct CheckedBoxView: View {
//    @State var isChecked = false
//    @Binding var selectedImage: String
//    var imageName: String
//
//    var body: some View {
//        Button {
//            isChecked = true
//            selectedImage = imageName
//        } label: {
//            Image(systemName: imageName)
//        }
//        .onChange(of: selectedImage) { newValue in
//            if newValue != imageName {
//                isChecked = false
//            }
//
//        }
//    }
//
//}

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

struct Task: Identifiable {
    let id = UUID()
    var isCompleted: Bool
    
}

struct ContentView: View {
   // @State private var tasks = Task(isCompleted: false)
    @State private var isChecked = false
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
                                .foregroundColor(Color("ColorT"))
                                .bold()
                                .font(.custom("AppleGothic", size:30))
                                .padding()
                            
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
                                            .frame(width: 340, height: 120)
                                            .border(.brown)
                                            .cornerRadius(15)
                                    )
                                }
                                .frame(width: 333, height: 120)
                                
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
                            .frame(width: geo.size.width * 0.7, height: geo.size.height * 3.0 / 6)
                            .cornerRadius(15)
                        VStack {
                            HStack {
                                
                                Image(systemName: "arrow.down.right.and.arrow.up.left")
                                
                                //    .frame(width: geo.size.width * 0.1)
                                //   Spacer()
                                //      .padding(.trailing)
                                
                                    .onTapGesture {
                                        withAnimation {
                                            showingModal = false
                                            
                                        }
                                        
                                    }
                                //  Spacer()
                            }
                            Text("Missions")
                            
                                .font(.title)
                                .foregroundColor(Color("ColorT"))
                            Divider()
                            Group {
                                HStack {
                                    Text("Say goodmorning to someone")
                                    CheckBox()
                                  //  Image(systemName: "square")
//                                                               Image(systemName: isChecked ? "checkmark.square" : "square")
//                                                                    .onTapGesture {
//                                                                       isChecked.toggle()
//                                     isChecked = true
//                                                                   }
//
                                    
                                }
                                
                                Divider()
                                HStack{
                                    Text("Speak in front of a group")
                                    CheckBox()
                                    //Image(systemName: "square")
                                }
                                Divider()
                                HStack {
                                    Text("Post a picture online")
                                    CheckBox()
                                   // Image(systemName: "square")
                                }
                                Divider()
                                HStack {
                                    Text("Talk to someone new")
                                    CheckBox()
                                 //   Image(systemName: "square")
                                    
                                    
                                }
                            }
                            Group {
                                Divider()
                                HStack {
                                    Text("Share an opinion or idea")
                                    CheckBox()
                                    //Image(systemName: "square")
                                  
                                }
                            }
                            Divider()
                            HStack {
                                Text("Engage in positive self-talk")
                                CheckBox()
                               // Image(systemName: "square")
                                
                            }
                            Divider()
                            HStack {
                                Text("Attend a social event")
                                CheckBox()
                                //Image(systemName: "square")
        
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
