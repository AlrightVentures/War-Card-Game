//
//  ContentView.swift
//  war card game
//
//  Created by Bart Baranowski on 14/07/2021.
//

import SwiftUI

struct ContentView: View {
    
    // Properties
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        ZStack {
            
            Image("background")
            
            
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    
                    // Generate a number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    
                    
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .padding(.bottom)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .padding(.bottom)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    .foregroundColor(Color.white)
                    Spacer()
                }
                Spacer()
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
