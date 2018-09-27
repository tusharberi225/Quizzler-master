//
//  Question.swift
//  Quizzler
//
//  Created by TUSHAR BERI on 26/09/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//


import Foundation

class Question {
    
    let questionText:String
    let answerText:Bool
    
    
    init(text:String,correctAnswer:Bool) {
        questionText = text
        answerText = correctAnswer
        
        
    }
    
}

