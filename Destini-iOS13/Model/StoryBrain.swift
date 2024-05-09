//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    var storyNum = 0
    
    let stories = [
        Story(title: "You see a fork in the road", choice1: "Take a left.", choice2: "Take a right", choice1Destination: 1,
             choice2Destination: 2),
        Story(title: "You see a tiger", choice1: "Shout for help.", choice2: "Play dead", choice1Destination: 0,
             choice2Destination: 0),
        Story(title: "You find a treasure chest", choice1: "Open it.", choice2: "Check for traps", choice1Destination: 0,
             choice2Destination: 0)
    ]
    
    func getStoryText() -> String {
        return stories[storyNum].title
    }
    
    func getStoryChoice1() -> String {
        return stories[storyNum].choice1
    }
    
    func getStoryChoice2() -> String {
        return stories[storyNum].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNum]
        
        if userChoice == currentStory.choice1 {
            storyNum = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNum = currentStory.choice2Destination
        }
    }
    

}
