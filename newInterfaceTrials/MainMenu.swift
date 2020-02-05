//
//  MainMenu.swift
//  newInterfaceTrials
//
//  Created by skander lakhal on 2/4/20.
//  Copyright © 2020 REDRebelRiots. All rights reserved.
//

import SwiftUI

struct MainMenu: View {
    
    @State var showProfile = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        
        
        NavigationView {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9411764706, alpha: 1)), Color(#colorLiteral(red: 0.6862745098, green: 0.6196078431, blue: 0.7411764706, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                    
                    .edgesIgnoringSafeArea(.all)
                
                mainMenuSubView()
                
                
            }
            .navigationBarItems(trailing: BannerDetails())
        
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
        }
        
        
        
    }
}

struct MainMenu_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainMenu()
    }
}

struct mainMenuSubView: View {
    @State var buttonClicked = false
    
    var body: some View {
        
        VStack {
         
            Text ("VAMPIRE")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color(#colorLiteral(red: 0.1058823529, green: 0.05490196078, blue: 0.3803921569, alpha: 1)))
                .padding(.top, 30)
            Spacer()
            VStack(spacing : 20) {
                
                
                NavigationLink(destination: RolesView()) {
                    
                    Text("New Game")
                        
                        .foregroundColor(Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1)))
                        .fontWeight(.bold)
                        .frame(width: 150, height: 50)
                        .background(Color(#colorLiteral(red: 0.1058823529, green: 0.05490196078, blue: 0.3803921569, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
                }
                Text("Players Library")
                    .foregroundColor(Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1)))
                    .fontWeight(.bold)
                    .frame(width: 150, height: 50)
                    .background(Color(#colorLiteral(red: 0.1058823529, green: 0.05490196078, blue: 0.3803921569, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
                
                Text("Button 3")
                    .foregroundColor(Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1)))
                    .fontWeight(.bold)
                    .frame(width: 150, height: 50)
                    .background(Color(#colorLiteral(red: 0.1058823529, green: 0.05490196078, blue: 0.3803921569, alpha: 1)))
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
                
            }
            Spacer()
            
            
        }
    }
}



struct BannerDetails: View {
    @State var prRules = false
    
    var body: some View {
        ZStack {
        
            HStack {
                Spacer()
              Image(systemName: "bell")
                               .renderingMode(.original)
                               .font(.system(size: 16, weight: .medium))
                               .frame(width: 36, height: 36)
                               .background(Color(#colorLiteral(red: 0.937254902, green: 0.9294117647, blue: 0.9490196078, alpha: 1)))
                               .clipShape(Circle())
                               .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                               .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                
                Button(action: {self.prRules.toggle()
                }) {
                    Image(systemName: "questionmark")
                        
                        .renderingMode(.original)
                        .font(.system(size: 16, weight: .medium))
                        .frame(width: 36, height: 36)
                        .background(Color(#colorLiteral(red: 0.937254902, green: 0.9294117647, blue: 0.9490196078, alpha: 1)))
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                }
                Image(systemName: "cart")
                                  .frame(width: 36, height: 36)
                                 .background(Color(#colorLiteral(red: 0.937254902, green: 0.9294117647, blue: 0.9490196078, alpha: 1)))
                                  .clipShape(Circle())
                                  .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                                  .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
             
            }
            .padding(.horizontal)
            .padding(.top, 30)
                
            .sheet(isPresented: $prRules){
                
                HowToPlay()
                
            }
        }
        
    }
}

let screen =  UIScreen.main.bounds
