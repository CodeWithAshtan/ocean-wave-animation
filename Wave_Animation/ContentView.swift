//  ContentView.swift
//  Wave_Animation
//  Created by Ashish Singh on 02/10/20.

import SwiftUI

struct ContentView: View {
    let screen = UIScreen.main.bounds
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea(.all)

            VStack {
                Text("Welcome Back!")
                    .foregroundColor(Color(#colorLiteral(red: 0.9058823529, green: 0.9019607843, blue: 0.9019607843, alpha: 1)))
                    .font(.title)
                    .fontWeight(.bold)
                Text("Login to Continue")
                    .foregroundColor(Color(#colorLiteral(red: 0.7058823529, green: 0.7058823529, blue: 0.7058823529, alpha: 1)))
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            .offset(y: -screen.height/2)
            .padding(.top, 200)
            
            VStack {
                LoginFieldView(title: "Username", icon: "person")
                LoginFieldView(title: "Password", icon: "lock")
               
                ZStack {
                    
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(Color(#colorLiteral(red: 0.7254902124, green: 0.5882352941, blue: 0.1176470588, alpha: 1)))
                    Image(systemName: "arrow.right")
                        .font(.title)
                        .foregroundColor(.black)
                        
                    
                }
                .frame(width: 50, height: 50)
               
            }
            .offset(y: -50)
   
            WaveView()
            
        }
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

