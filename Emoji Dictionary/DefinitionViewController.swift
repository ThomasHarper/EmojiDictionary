//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Thomas Bentkowski on 02/11/2016.
//  Copyright © 2016 Thomas Bentkowski. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = "No emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😂"{
            emojiDefinitionLabel.text = "Laughing man"
            categoryLabel.text = "Category : happiness"
            birthyearLabel.text = "BirthYear : 2000"
        } else if emoji == "😄"{
            emojiDefinitionLabel.text = "Smiling man"
            categoryLabel.text = "Category : happiness"
            birthyearLabel.text = "BirthYear : 2001"
        } else if emoji == "😳"{
            emojiDefinitionLabel.text = "Shy man"
            categoryLabel.text = "Category : surprised"
            birthyearLabel.text = "BirthYear : 2002"
        } else if emoji == "😋"{
            emojiDefinitionLabel.text = "Tong man"
            categoryLabel.text = "Category : tacky"
            birthyearLabel.text = "BirthYear : 2003"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
