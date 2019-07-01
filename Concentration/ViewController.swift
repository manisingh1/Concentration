//
//  ViewController.swift
//  Concentration
//
//  Created by Maninder Singh on 5/25/19.
//  Copyright © 2019 Maninder Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Concentration = Concentration()
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojiChoices = ["🎃", "👻", "👻", "🎃"]
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)

        }
        else{
            print("NOPE")
        }
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipcard(withEmoji: \(emoji))")
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    

}

