//
//  SharedData.swift
//  BarkLog
//
//  Created by johnny basgallop on 11/12/2023.
//

import Foundation
import SwiftUI



class SharedData: ObservableObject {
    static let shared = SharedData()
    @Published var testVar : String = "Original"
    func test() {
        self.testVar = "Not Original"
    }
    
}

