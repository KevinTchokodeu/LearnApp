//
//  InputField.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 13.02.20.
//  Copyright © 2020 Kevin Tchokodeu. All rights reserved.
//


import SwiftUI

struct InputField: View {
    var body: some View{
        /*Image("NeueltLogo")
        .clipShape(Rectangle())
        .scaledToFit()
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 3)*/
        Rectangle()
            //.foregroundColor(.gray)
            .cornerRadius(30)
    }
}


struct InputField_Previews: PreviewProvider {
    static var previews: some View {
        InputField()
    }
}
