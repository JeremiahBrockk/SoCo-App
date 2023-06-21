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
    
    var body: some View {
        Image(systemName:  rating <= selectedRating ? "star.fill" : "star")
            .font(.body)
            .foregroundColor(Color("ColorST"))
            .onTapGesture {
                selectedRating = rating
                
            }
    }
    
}

struct SurveyPage: View {
    @AppStorage("calculatedTotalScore") private var calculatedTotalScore = 0
    @State private var ratings: [Int] = [0, 0, 0, 0, 0]
    @Binding var userHasCompletedSurvey: Bool
    @State var isShowingAlert = false
    
    @Environment(\.legibilityWeight) var legibilityWeight
    
    var totalScore: Int {
        ratings.reduce(0, +)
    }
    
    var surveyFont: String {
        guard let legibilityWeight = legibilityWeight else {
            return "Courier New"
        }
        switch legibilityWeight {
        case .regular:
            return "Courier New"
        case .bold:
            return "Courier New Bold"
        @unknown default:
            return "Courier New"
        }
    }
    
    var body: some View {
        ZStack {
            Color.init("ColorM")
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Please rate your current comfort level in each of these different environments")
                    .foregroundColor(Color("ColorTT"))
                    .bold()
                    .font(.custom(surveyFont, size: 18, relativeTo: .title))
                    .multilineTextAlignment(.center)
                    .border(.brown)
                Spacer()
                Form {
                    // TODO: make these sections programatically using a foreach loop
                    Section(header: Text("School").font(.custom(surveyFont, size: 24, relativeTo: .title))) {
                        
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[0])
                                    .onTapGesture {
                                        ratings[0] = rating
                                        calculateTotalScore()
                                    }
                            }
                        }
                    }
                    Section(header: Text("Being Alone").font(.custom(surveyFont, size: 24, relativeTo: .title))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[1])
                                    .onTapGesture {
                                        ratings[1] = rating
                                        calculateTotalScore()
                                    }
                                
                            }
                        }
                    }
                    Section(header: Text("Trying Something New").font(.custom(surveyFont, size: 24, relativeTo: .title))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[2])
                                    .onTapGesture {
                                        ratings[2] = rating
                                        calculateTotalScore()
                                    }
                                
                            }
                        }
                    }
                    Section(header: Text("Working").font(.custom(surveyFont, size: 24, relativeTo: .title))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[3])
                                    .onTapGesture {
                                        ratings[3] = rating
                                        calculateTotalScore()
                                    }
                                
                            }
                        }
                    }
                    Section(header: Text("Social Gathering").font(.custom(surveyFont, size: 24, relativeTo: .title))) {
                        HStack {
                            ForEach(1...5, id: \.self) { rating in
                                MarkedBox(rating: rating, selectedRating: $ratings[4])
                                    .onTapGesture {
                                        ratings[5] = rating
                                        calculateTotalScore()
                                    }
                                
                            }
                        }
                    }
                    
                }
            }
            
            .overlay(alignment: .bottom) {
                Button {
                    isShowingAlert = true
                } label: {
                    NavigationLink(destination: SocoHome()) {
                        Text("Submit")
                            .foregroundColor(Color("ColorB"))
                            .font(.custom(surveyFont, size: 18, relativeTo: .title))
                            .fontWeight(.bold)
                    }
                }
                .padding()
                .alert("Form Submitted", isPresented: $isShowingAlert) {
                    Button("ok") {
                            userHasCompletedSurvey = true
                    }
                } message: {
                    Text("Total Score: \(totalScore)")
                }
                
            }
            
        }
    }
    private func calculateTotalScore() {
        var sum = 0
        for i in 0..<ratings.count {
            switch ratings[i] {
            case 2:
                sum += 2
            case 3:
                sum += 3
            case 4:
                sum += 4
            case 5:
                sum += 5
            default:
                break
            }
        }
    }
}

struct DummyView: View {
    @State var userHasCompletedSurvey = false
    var body: some View {
        SurveyPage(userHasCompletedSurvey: $userHasCompletedSurvey)
    }
}

struct SurveyPage_Previews: PreviewProvider {
    static var previews: some View {
        DummyView()
    }
}
