//
//  ViewController.swift
//  Quiz3
//
//  Created by Sreenikhil Kollu on 2/2/20.
//  Copyright © 2020 Sreenikhil Kollu. All rights reserved.
//

import UIKit
import os
class ViewController: UIViewController {
    //Interface Builder
    @IBOutlet var questionLabel: UILabel!
     @IBOutlet var answerLabel: UILabel!
    let questions: [String] = [
        "What is the first University of united states?",
        "What is the largest state by area in USA?",
        "Who is the father of computer science?",
        "What is the latest version of ios?",
        "What is the capital of connecticut?"
    ]
    
    let answers: [String] = [
        "Harvard University",
        "Alaska",
        "Alan Turing",
        "ios 13",
        "Hartford"
    ]
    var Index: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        Index+=1
        if(Index == questions.count){
            Index = 0
        }
        let question: String = questions[Index]
        questionLabel.text = question
        answerLabel.text = "???"
        os_log("Showing next question")
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[Index]
        answerLabel.text = answer
        os_log("Showing the answer")
    }
    
      override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I Just loaded")
        let question: String = questions[Index]
        questionLabel.text = question
    }
    

}

