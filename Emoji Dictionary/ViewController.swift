//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Lane Faison on 4/27/17.
//  Copyright © 2017 Lane Faison. All rights reserved..
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🤓"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face with glasses on"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👮‍♀️"
        emoji2.birthYear = 2014
        emoji2.category = "Occupations"
        emoji2.definition = "A female police officer"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😎"
        emoji3.birthYear = 2012
        emoji3.category = "Smiley"
        emoji3.definition = "A smiley face with sun glasses on"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👨🏻‍💻"
        emoji4.birthYear = 2017
        emoji4.category = "Activity"
        emoji4.definition = "A man at a computer"
        
        return [emoji1, emoji2, emoji3, emoji4]
        
    }

}

