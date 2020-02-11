//
//  InputView.swift
//  LearnApp
//
//  Created by Kevin Tchokodeu on 11.02.20.
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
            .foregroundColor(.black)

        
    }
}


struct InputView: View{
    @State private var change = false
    var body: some View {
        NavigationView {
            VStack {
                InputField()
                .offset(x: 0, y: change ? 900 : 0)
                .animation(Animation.easeInOut)
                .scaledToFit()
                
                Button(self.change ? "scan" : "enter"){
                    self.change.toggle()
                }.padding(.bottom)
                 .foregroundColor(.red)
                    .font(.title)
            }
            .navigationBarTitle(Text("Scan or Enter"))
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
