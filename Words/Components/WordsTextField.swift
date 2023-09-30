//
//  WordsTextField.swift
//  Words
//
//  Created by User on 23.08.2023.
//

import SwiftUI

struct WordsTextField: View {
    
    @State var word: Binding<String>
    var placeholder: String
    
    var body: some View {
        
        TextField(placeholder,
                  text: word)
        .font(.title2)
        .padding()
        .background(.white)
        .cornerRadius(16)
    }
}

