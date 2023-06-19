//
//  SurveyVM.swift
//  SoCo
//
//  Created by Mr. Brock💰🤟🏾 on 5/31/23.
//

import Foundation

class SurveyViewModel: ObservableObject {
   @Published var questions: [SurveyQuestions] = [

    SurveyQuestions(message: "Please rate your current comfort level in each of these different envitronments", environments: "School"),
        SurveyQuestions(message: "Please rate your current comfort level in each of these different envitronments", environments: "Being Alone"),
        SurveyQuestions(message: "Please rate your current comfort level in each of these different envitronments", environments: "Trying something new"),
    SurveyQuestions(message: "Please rate your current comfort level in each of these different envitronments", environments: "Working"),
        SurveyQuestions(message: "Please rate your current comfort level in each of these different envitronments", environments: "Speaking to others"),
        SurveyQuestions(message: "Please rate your current comfort level in each of these different envitronments", environments: "Speaking up"),
        SurveyQuestions(message: "Please rate your current comfort level in each of these different envitronments", environments: "Social Gatherings")


    ]
}


