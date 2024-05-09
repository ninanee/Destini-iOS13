//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stories = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
             
        
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        stories.nextStory(userChoice: sender.currentTitle!)
        updateUI()
        
    }
    
    func updateUI(){
        storyLabel.text = stories.getStoryText()
        choice1Button.setTitle(stories.getStoryChoice1(), for: .normal)
        choice2Button.setTitle(stories.getStoryChoice2(), for: .normal)
    }
    
}

