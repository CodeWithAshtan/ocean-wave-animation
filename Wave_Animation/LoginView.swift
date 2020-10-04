//
//  LoginView.swift
//  Wave_Animation
//
//  Created by Ashish Singh on 04/10/20.
//

import SwiftUI

struct LoginFieldView: View {
    let title: String
    let icon: String
    var body: some View {
        VStack {
            
            VStack(spacing: 16) {
                LoginRow(title: title, icon: icon)
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(Color(#colorLiteral(red: 0.2039215686, green: 0.2156862745, blue: 0.2509803922, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .padding(.horizontal, 30)

        }
        .padding(.bottom, 30)
    }
}


struct LoginRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack {
            
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
                .foregroundColor(Color(#colorLiteral(red: 0.368627451, green: 0.3843137255, blue: 0.4117647059, alpha: 1)))
            Spacer()
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.368627451, green: 0.3843137255, blue: 0.4117647059, alpha: 1)))
        }
        .padding(.horizontal, 16)
    }
}

