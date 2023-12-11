//
//  SignUpScreen.swift
//  BarkLog
//
//  Created by johnny basgallop on 10/12/2023.
//

import SwiftUI
import AuthenticationServices

struct SignUpScreen: View {
    
    @AppStorage ("log_state") var log_state = false
    @StateObject var signInViewModel = SignInViewModel()
    
    var body: some View {
        VStack{
            Image("dogIcon")
                .resizable()
                .frame(width: screenWidth * 0.7, height: screenWidth * 0.7).offset(x:0,y: screenHeight * 0.1)
            
            
            
            Text("Easy tracking to help you stay on top of your furry friend.").font(.title).fontWeight(.semibold).frame(width: screenWidth * 0.7).offset(x:0,y: screenHeight * 0.18)
            
            Spacer()
            
            SignInWithAppleButton {request in
                signInViewModel.SignInWithAppleRequest(request)
            } onCompletion: { result in
                signInViewModel.SignInWithAppleCompletion(result)
            }.frame(width: 300, height: 50).cornerRadius(10).offset(y: -screenHeight * 0.05)
        }
    }
}

#Preview {
    SignUpScreen()
       
}
