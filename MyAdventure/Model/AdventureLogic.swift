//
//  AdventureLogic.swift
//  MyAdventure
//
//  Created by Amenda Kang on 2/10/24.
//

import Foundation

struct AdventureLogic {
    var promptIndex : Int = 0
        
    let prompt = [
        Prompt("The road before you has 2 paths",
               "Go left", //open prompt[1]-> index * 2 + 1
               "Go right", //open prompt[2]-> index * 2 + 2
              false
        ),
        Prompt("You follow a river along the left path and come to a lake",
               "Start fishing from the dock", //open prompt[3]-> index * 2 + 1
               "Jump in and go for a swim", //open prompt[4]-> index * 2 + 1
              false
        ),
        Prompt("The right path leads you into a forest where you see a cabin and a cave", //2
               "Enter the cabin",
               "Enter the cave ",
              false
        ),
        Prompt("You reel in a chest filled with treasure!", //3
               "restart",
               "",
              true
        ),
        Prompt("You find the underwater city of Atlantis!", //4
               "restart",
               "",
              true
        ),
        Prompt("You enter the cabin's wardrobe to travel to Narnia!", //5
               "restart",
               "",
              true
        ),
        Prompt("You get adopted by a bear family living in the cave!", //6
               "restart",
               "",
              true
        )
    ]

    func getOptionNumber(_ option: String) -> Int {
        if  option == prompt[promptIndex].option1 {
            return 1
        } else {
            return 2
        }
    }
    
    mutating func increaseIndex(_ option: Int) {
        promptIndex = promptIndex * 2 + option
    }
    
    mutating func resetIndex(){
        promptIndex = 0
    }
    
    func getNextPrompt() -> String {
        return prompt[promptIndex].prompt
    }
    
    func isFinal() -> Bool {
        return prompt[promptIndex].final
    }
        
    func getChoiceOne() -> String {
        return prompt[promptIndex].option1
    }
    
    func getChoiceTwo() -> String {
        return prompt[promptIndex].option2
    }
        
    func getImageName() -> Int {
        return promptIndex
    }
}
