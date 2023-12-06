//
//  PooIntent.swift
//  BarkLogWidgetExtension
//
//  Created by johnny basgallop on 06/12/2023.
//

import Foundation
import SwiftUI
import AppIntents

struct ActionIntent: AppIntent{
    
    static var title: LocalizedStringResource = "Toggle Task State"
    @Parameter(title: "Task ID")
    
    var type: String
    
    init(){
        
    }
    
    init(type:String){
        self.type = type
    }
    
  
    
    func perform() async throws -> some IntentResult {
        
        switch(type){
        case "poo":
            Update.shared.update = "did a poo"
            
        case "wee":
            Update.shared.update = "did a wee"
            
        case "eat":
            Update.shared.update = "ate some food"
            
        case "drink":
            Update.shared.update = "drank some water"
        
        default:
            print("unrecognised")
            
        }
        
        return .result()
    }
    }



