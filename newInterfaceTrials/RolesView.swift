//
//  RolesView.swift
//  newInterfaceTrials
//
//  Created by skander lakhal on 1/31/20.
//  Copyright © 2020 REDRebelRiots. All rights reserved.
//

import SwiftUI

struct RolesView: View {
    var body: some View {
        
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    List {
                        
                        ZStack {
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                            
                            VStack(spacing: 20) {
                                
                                VStack {
                                    HStack {
                                        Text("The Good Guys")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        Spacer()
                                    }
                                    .padding()
                                    
                                    
                                    VStack {
                                        HStack (spacing : 20){
                                            
                                            Role()
                                            Role()
                                            
                                        }
                                        .padding()
                                        HStack (spacing : 20){
                                            
                                            Role()
                                            Role()
                                            
                                        }
                                    }
                                    
                                    
                                }
                                VStack {
                                    HStack {
                                        Text("The Bad Guys")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                        Spacer()
                                    }
                                    .padding()
                                    
                                    
                                    VStack {
                                        HStack (spacing : 20){
                                            
                                            Role()
                                            Role()
                                            
                                        }
                                        .padding()
                                        
                                        HStack (spacing : 20){
                                            
                                            Role()
                                            Role()
                                            
                                        }
                                    }
                                }
                                
                                
                            }
                            
                        }
                            
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                    
                    
                    ZStack {
                        Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9411764706, alpha: 1))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                        Text("Next")
                            .foregroundColor(Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1)))
                            .fontWeight(.bold)
                            .frame(width: 150, height: 35)
                            .background(Color(#colorLiteral(red: 0.1058823529, green: 0.05490196078, blue: 0.3803921569, alpha: 1)))
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.2), radius: 20, x: 0, y: 20)
                    }
                        
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                }
            }
        
        
        
        
        
    }
    func cellWidth () -> CGFloat {
        
        return (UIScreen.main.bounds.width - 3 * 16) / 2
    }
    
}

struct RolesView_Previews: PreviewProvider {
    static var previews: some View {
        RolesView()
    }
}


