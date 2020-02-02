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
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        os_log("Showing next question")
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        os_log("Showing the answer")
    }
      override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I Just loaded")
        questionLabel.text = "I am a question"
        answerLabel.text = "I am an answer"
    }
    

}

