//
//  SwiftUIView.swift
//  BarkLog
//
//  Created by johnny basgallop on 10/12/2023.
//

import SwiftUI

struct Main: View {
    @AppStorage ("log_state") var log_state = false
    var body: some View {
        VStack{
            Button(action: {
                withAnimation{
                    log_state = false
                }
                
            }, label: {
                Text("Logout")
            })
            Spacer()
            
            Text("Main Screen")
            
            Spacer()
        }
    }
}

#Preview {
    Main()
}
