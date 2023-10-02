//
//  GameView.swift
//  Words
//
//  Created by User on 23.08.2023.
//

import SwiftUI

struct GameView: View {
    var body: some View {
       
        VStack(spacing: 16) {
            HStack{
                Button {
                    print("Quit")
                } label: {
                    Text("Выход")
                        .padding(6)
                        .padding(.horizontal)
                        .background(Color("Orange"))
                        .cornerRadius(12)
                        .padding(6)
                        .foregroundColor(.white)
                        .font(.custom("AvenirNext-Boid",
                                      size: 18))
                }
                Spacer()
            }
                Text("Магнитотерапия")
                    .font(.custom("AvenirNext-Boid",
                                  size: 36))
                    .foregroundColor(.white)
            
            HStack(spacing: 12){
                
                VStack{
                    Text("0")
                        .font(.custom("AvenirNext-Boid",
                                      size: 60))
                        .foregroundColor(.white)
                    Text("Вася")
                        .font(.custom("AvenirNext-Boid",
                                      size: 24))
                        .foregroundColor(.white)
                }.padding(20)
                    .frame(width: screen.width / 2.2,
                           height: screen.width / 2.2)
                    .background(Color("FirstPlayer"))
                    .cornerRadius(26)
                    .shadow(color: .red,
                            radius: 4,
                            x: 0,
                            y: 0)
                
                
                VStack{
                    Text("0")
                        .font(.custom("AvenirNext-Boid",
                                      size: 60))
                        .foregroundColor(.white)
                    Text("Петя")
                        .font(.custom("AvenirNext-Boid",
                                      size: 24))
                        .foregroundColor(.white)
                }.padding(20)
                    .frame(width: screen.width / 2.2,
                           height: screen.width / 2.2)
                    .background(Color("SecondColor"))
                    .cornerRadius(26)
                    .shadow(color: .purple,
                            radius: 4,
                            x: 0,
                            y: 0)
                
            }
                
                
            }.background(Image("backgraund2"))
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
