//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Thomas Bentkowski on 02/11/2016.
//  Copyright © 2016 Thomas Bentkowski. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = "No emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😂"{
            emojiDefinitionLabel.text = "Laughing man"
        } else if emoji == "😄"{
            emojiDefinitionLabel.text = "Smiling man"
        } else if emoji == "😳"{
            emojiDefinitionLabel.text = "Shy man"
        } else if emoji == "😋"{
            emojiDefinitionLabel.text = "Tong man"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
