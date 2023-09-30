//
//  ContentView.swift
//  Words
//
//  Created by User on 23.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var bigWord = ""
    @State var player1 = ""
    @State var player2 = ""
    
    @State var isShowedGame = false
    
    var body: some View {
        
        VStack {
            
            TitleText(text: "WordsGame")
            
            WordsTextField(word: $bigWord, placeholder: "Введите большое слово")
            .padding()
            .padding(.top, 32)
            
            WordsTextField(word: $player1, placeholder: "Игрок 1")
            .cornerRadius(16)
            .padding(.horizontal, 20)
            
            WordsTextField(word: $player2, placeholder: "Игрок 2")
            .cornerRadius(16)
            .padding(.horizontal, 20)
            
            Button {
                isShowedGame.toggle()
            } label: {
                Text("Старт")
                    .font(.custom("AvenirNext-Bold", size: 30))
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 64)
                    .background(Color("FirstPlayer"))
                    .cornerRadius(100)
                    .padding(.top)
            }
        }.background(Image("backgraund2"))
            .fullScreenCover(isPresented: $isShowedGame) {
                GameView()
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
