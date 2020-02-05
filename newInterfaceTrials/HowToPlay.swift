//
//  HowToPlay.swift
//  newInterfaceTrials
//
//  Created by skander lakhal on 2/4/20.
//  Copyright © 2020 REDRebelRiots. All rights reserved.
//

import SwiftUI

struct HowToPlay: View {
    var body: some View {
        
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9411764706, alpha: 1)), Color(#colorLiteral(red: 0.6862745098, green: 0.6196078431, blue: 0.7411764706, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                    
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    VStack {
                        Text("Game Rules")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.top, 40)
                
                    }
                    
                    ScrollView {
                        Text("     Setting Up: Assemble a group of players. An odd number is best, although not absolutely mandatory. \n      There should be at least seven players.You should have an equal number of cards to the people playing. \n      You should always have 1 Seer, 1 Doctor, and 2 werewolves and the rest of the players should be Villagers. If you have a large group (16+), you can replace a Villager for an additional Werewolf.\n      Shuffle the cards and hand them out, face down. Each player should look at their card, but must keep it a secret. You can learn more about what each character can do ! \n The Night At night, the moderator tells all the players Close your eyes.Everyone begins slapping their knees (or table) to cover up any noises of the night. \n     The moderator says, Werewolves, open your eyes. The werewolves do so, and look around to recognize each other. The moderator should also note who the werewolves are.\n     The moderator says Werewolves, pick someone to kill. The werewolves silently agree on one villager (It's critical that they remain silent). The other players are sitting there with their eyes closed, and the werewolves don't want to give themselves away. Sign language is appropriate, or just pointing, nodding, raising eyebrows, and so on.\n     When the werewolves have agreed on a victim, and the moderator understands who they picked, the moderator says, Werewolves, close your eyes.")
                            .font(.callout)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(6)
                            .frame(maxWidth: . infinity)
                            .padding(20)
                    }
                }
            }
           
        .navigationBarItems(leading: Text("Hello"))

    }
}

struct HowToPlay_Previews: PreviewProvider {
    static var previews: some View {
        HowToPlay()
    }
}
