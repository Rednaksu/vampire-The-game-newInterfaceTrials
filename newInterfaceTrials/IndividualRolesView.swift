//
//  ContentView.swift
//  newInterfaceTrials
//
//  Created by skander lakhal on 1/31/20.
//  Copyright © 2020 REDRebelRiots. All rights reserved.
//

import SwiftUI

struct IndividualRolesView: View {
    var body: some View {
        HStack(spacing: 20) {
            Role()

        }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IndividualRolesView()
    }
}

struct Role: View {
    @State var roleSelected = false
    @State var roleLongPressed = false
    
    var body: some View {
        VStack {
            VStack(spacing : 16) {
                
                Spacer()
                Image("Avatar")
                    .resizable()
                    .grayscale(roleSelected ? 1 : 0.75)
                    .aspectRatio(contentMode: .fit)
//                    .frame(width: cellWidth()/1.5, height:cellWidth()/1.5)
//                    .clipShape(Circle())
                Text ("Druid")
                    
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .shadow(color: Color.black.opacity(0.2), radius: 2.5, x: 0, y: 3)
                    .foregroundColor(Color.black)
                
                
                Spacer()
                
            }
            .frame(maxWidth:cellWidth())
            .frame(height:cellWidth())
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
//            .padding(.horizontal,16)
            .onTapGesture {
                self.roleSelected.toggle()
                
            }
            
            
        }
    }
    
}

func cellWidth () -> CGFloat {
    
    return  (UIScreen.main.bounds.width - 4 * 16) / 2
}
