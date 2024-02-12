//
//  Prompt.swift
//  MyAdventure
//
//  Created by Amenda Kang on 2/10/24.
//

import Foundation

struct Prompt {
    
    init(_ prmpt: String, _ o1:String, _ o2: String, _ fin: Bool) {
        prompt = prmpt
        option1 = o1
        option2 = o2
        final = fin
    }
    
    var prompt: String
    var option1: String
    var option2: String
    var final: Bool
    
}
