//
//  ContentView.swift
//  BarkLog
//
//  Created by johnny basgallop on 06/12/2023.
//

import SwiftUI
import AuthenticationServices

var screenWidth = UIScreen.main.bounds.width
var screenHeight = UIScreen.main.bounds.height

struct ContentView: View {
    
    @AppStorage ("log_state") var log_state = false
    
    var body: some View {
        VStack {
            if !log_state {
                SignUpScreen()
            }
            else{
                Main()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
