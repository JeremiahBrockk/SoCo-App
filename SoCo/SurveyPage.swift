//
//  SurveyPage.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/22/23.
//

import SwiftUI

struct MarkedBox: View {
    @State var rating: Int
    @Binding var selectedRating: Int
    //  @State private var isChecked: [Int] = [1, 2, 3, 4, 5]
    //  @State var score:Int
    
    var body: some View {
        Image(systemName:  rating <= selectedRating ? "star.fill" : "star")
            .font(.title)
            .foregroundColor(Color("ColorST"))
            .onTapGesture {
                selectedRating = rating
                // selectedRating = selectedRating > 0 ? 0 : 1
                
            }
    }
}

struct SurveyPage: View {
    @State private var ratings: [Int] = [0, 0, 0, 0, 0]
    @State private var totalScore = 0
    @State private var isFormSubmitted = false
    var total = [MarkedBox]()
    
    var body: some View {
        ZStack {
            Color.init("ColorM")
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Please rate your current comfort level in each of these different environments")
                    .foregroundColor(Color("ColorT"))
                    .bold()
                    .font(.custom("Courier New", size: 18))
                    .multilineTextAlignment(.center)
                    .border(.brown)
                    .font(.title)
                Spacer()
                Form {
                    Section(header: Text("School").font(.custom("Courier New", size: 24))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[0])
                                // .overlay(Text("\(rating)").foregroundColor(.white))
                                    .onTapGesture {
                                        ratings[0] = rating
                                        calculateTotalScore()
                                    }
                            }
                        }
                    }
                    Section(header: Text("Being Alone").font(.custom("Courier New", size: 24))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[1])
                                //   .overlay(Text("\(rating)").foregroundColor(.white))
                                    .onTapGesture {
                                        ratings[1] = rating
                                        calculateTotalScore()
                                    }
                                
                            }
                        }
                    }
                    Section(header: Text("Trying Something New").font(.custom("Courier New", size: 24))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[2])
                                //  .overlay(Text("\(rating)").foregroundColor(.white))
                                    .onTapGesture {
                                        ratings[2] = rating
                                        calculateTotalScore()
                                    }
                                
                            }
                        }
                    }
                    Section(header: Text("Working").font(.custom("Courier New", size: 24))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[3])
                                //  .overlay(Text("\(rating)").foregroundColor(.white))
                                    .onTapGesture {
                                        ratings[3] = rating
                                        calculateTotalScore()
                                    }
                                
                            }
                        }
                    }
                    Section(header: Text("Social Gathering").font(.custom("Courier New", size: 24))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[4])
                                // .overlay(Text("\(rating)").foregroundColor(.white))
                                    .onTapGesture {
                                        ratings[5] = rating
                                        calculateTotalScore()
                                    }
                                
                            }
                        }
                    }
                    Spacer()
                }
            }
            .overlay(
                Button(action: {
                    isFormSubmitted.toggle()
                }) {
                    Text("Submit")
                        .font(.custom("Courier New", size: 18))
                        .fontWeight(.bold)
                    
                }
                    .padding()
                    .alert(isPresented: $isFormSubmitted) {
                        Alert(
                            title: Text("Form Submitted"),
                            message: Text("Total Score: \(totalScore)"),
                            dismissButton: .default(Text("Ok"))
                        )
                    },
                alignment: .bottom
            )
            
        }
    }
    private func calculateTotalScore() {
        totalScore = ratings.reduce(0, +)
        
    }
}


struct SurveyPage_Previews: PreviewProvider {
    static var previews: some View {
        SurveyPage()
    }
}
