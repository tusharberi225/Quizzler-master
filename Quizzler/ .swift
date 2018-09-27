//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  let allQuestion=QuestionBank()
    var answerPicked : Bool = false
    var questionNumber : Int = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstQuestion=allQuestion.list[0]
        questionLabel.text=firstQuestion.questionText
  
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag==1 {
            answerPicked = true
        }
        else if sender.tag==2 {
            answerPicked = false
        }
        
        checkAnswer()
        
        questionNumber += 1
       
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if questionNumber <= 12 {
            questionLabel.text = allQuestion.list[questionNumber].questionText
        }
            
         
        else{ print("you quiz is complete")
        questionNumber=0
        }
        
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestion.list[questionNumber].answerText
        if correctAnswer==answerPicked
        {
            print("you got it!")
        }
        
        else{
            print("wrong!")
        }
    }
    
    
    func startOver() {
       
    }
    

}

