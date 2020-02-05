//
//  PlayerInGameView.swift
//  newInterfaceTrials
//
//  Created by skander lakhal on 2/3/20.
//  Copyright © 2020 REDRebelRiots. All rights reserved.
//

import SwiftUI

struct PlayerInGameView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("card3"), Color("card1")]), startPoint: .top, endPoint: .bottom)
                
                .edgesIgnoringSafeArea(.all)
            VStack {
                Avatar()
            }
        }
    }
}
struct PlayerInGameView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerInGameView()
    }
}

struct Avatar: View {
    
    @State var playerSelected = false
    
    var body: some View {
        
        
        VStack (spacing: 16){
            
            Spacer()
            Image("Player avatar")
                .resizable()
                
                .grayscale(playerSelected ? 1 : 0.75)
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Capsule(style: .circular)
                    .stroke(playerSelected ? Color("card3") : Color(.gray), lineWidth: 5)
                    
            )
            
            
            Text("Player Name")
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 200.0, height: 50.0)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.2), radius: 2.5, x: 0, y: 3)
                .foregroundColor(Color.black)
            
            
            Spacer()
        }
        .frame(maxWidth: . infinity)
        .frame(height:300)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1))]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
        .padding(.horizontal,30)
        .onTapGesture {
            self.playerSelected.toggle()
        }
    }
}

