//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Thomas Bentkowski on 31/10/2016.
//  Copyright © 2016 Thomas Bentkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiString
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
        
    }
    
    func makeEmojiArray () -> [Emoji]{
        let emojiOne = Emoji()
        emojiOne.emojiString = "😂"
        emojiOne.definition = "Laughing man"
        emojiOne.category = "happiness"
        emojiOne.birthyear = 2000
        
        let emojiTwo = Emoji()
        emojiTwo.emojiString = "😄"
        emojiTwo.definition = "Smiling man"
        emojiTwo.category = "happiness"
        emojiTwo.birthyear = 2001
        
        let emojiThree = Emoji()
        emojiThree.emojiString = "😳"
        emojiThree.definition = "Shy man"
        emojiThree.category = "surprised"
        emojiThree.birthyear = 2002
        
        return [emojiOne, emojiTwo, emojiThree]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

