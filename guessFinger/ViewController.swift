//
//  ViewController.swift
//  guessFinger
//
//  Created by Frank Chen on 2018-11-25.
//  Copyright © 2018 Frank Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber = 0

    @IBOutlet weak var feedbackText: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getNumber()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func guessButton(_ sender: Any) {
        if textField.text == String(randomNumber){
            feedbackText.text = "Perfect, you got it !"
        } else {
            feedbackText.text = "You guessed wrong, go again"
        }
        
    }
    
    func getNumber() {
        randomNumber = Int.random(in: 1...5)
    }
    
}

