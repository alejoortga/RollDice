//
//  ContentView.swift
//  RollDice
//
//  Created by Cristian Alejandro Ortega on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    
    let leftCircle = [1,2,3,4,5]
    let rightCircle = [1,2,3,4,5]
    
    @State private var leftEmpty = 0
    @State private var rightEmpty  = 0
    
    @State private var leftValue = 1
    @State private var rightValue = 2 
    
    var body: some View {
        
        ZStack{
            
            
            VStack{
                Text("Random Dice")
                Spacer()
                
                VStack{
                    HStack{
                        Circle().frame(width: 150).overlay{
                            Text("\(rightValue)")
                                .foregroundStyle(.white)
                            
                        }
                        Circle().frame(width: 150).overlay{
                            Text("\(leftValue)")
                                .foregroundStyle(.white)
                            
                        }
                    }.padding(.horizontal,30)
                        .padding(.bottom,40)
                        .font(.system(size: 30,design: .rounded).bold())
        
                    Button(action: {
                        let randomElementleft = Int.random(in: 0...4)
                        let randomElementRight = Int.random(in: 0...4)
                        
                        leftEmpty = leftCircle[randomElementleft]
                        rightEmpty = rightCircle[randomElementRight]
                        
                        withAnimation {
                            
                             leftValue = leftEmpty
                             rightValue = rightEmpty
                            
                        }
                        
                        

                        
                        if leftEmpty == rightEmpty{
                            print("They are the same")
                            
                        }else {
                            print("Are diferent")
                            print(leftEmpty)
                            print(rightEmpty)
                        }
                        
                        
                        
                    }, label: {
                        Text("RollDice")
                    })
                }
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
