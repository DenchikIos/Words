//
//  TitleText.swift
//  Words
//
//  Created by User on 23.08.2023.
//

import SwiftUI

struct TitleText: View {
    
    @State var text = ""
    
    var body: some View {
        Text(text)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("FirstPlayer"))
            .font(.custom("AvenirNext-Bold", size: 42))
            .cornerRadius(16)
            .foregroundColor(.white)
    }
}

struct TitleText_Previews: PreviewProvider {
    static var previews: some View {
        TitleText(text: "Магнитотерапия")
    }
}
