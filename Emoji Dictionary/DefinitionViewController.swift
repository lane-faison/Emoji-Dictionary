//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Lane Faison on 4/27/17.
//  Copyright © 2017 Lane Faison. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "👨🏻‍💻" {
        definitionLabel.text = "Lane at his laptop"
        }
        if emoji == "🤓" {
            definitionLabel.text = "Nerdy face"
        }
        if emoji == "👮‍♀️" {
            definitionLabel.text = "It's the police!"
        }
        if emoji == "😎" {
            definitionLabel.text = "Sunglasses face"
        }
        if emoji == "🤦🏻‍♂️" {
            definitionLabel.text = "Good grief!"
        }
        if emoji == "🏌🏽" {
            definitionLabel.text = "FORE!"
        }
        if emoji == "🏋🏾" {
            definitionLabel.text = "Hitting that PR"
        }
        if emoji == "🤡" {
            definitionLabel.text = "Clowns are creepy"
        }
        if emoji == "🌮" {
            definitionLabel.text = "Taco Tuesday!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
