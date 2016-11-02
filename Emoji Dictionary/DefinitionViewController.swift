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
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.emojiString
        birthyearLabel.text = "Birthyear : \(emoji.birthyear)"
        categoryLabel.text = emoji.category
        emojiDefinitionLabel.text = "Definition : \(emoji.definition)"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
